import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/account/entities/personal_info_dto.dart';
import 'package:testabd/features/profile/settings/personal_info_state.dart';

@injectable
class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  final AccountRepository _accountRepository;
  final AppMessageHandler _appMessageHandler;

  late StreamSubscription _userInfoSubscription;

  PersonalInfoCubit(this._accountRepository, this._appMessageHandler)
    : super(PersonalInfoState()) {

    _userInfoSubscription = _accountRepository.userInfoStream.listen((event) {
      emit(state.copyWith(myInfo: event));
    });

  }

  @override
  Future<void> close() {
    _userInfoSubscription.cancel();
    return super.close();
  }
  Future<void> changePersonalInfo(PersonalInfoDto personalInfoDto) async {
    if (state.status == PersonalInfoStatus.loading) return;
    emit(state.copyWith(status: PersonalInfoStatus.loading));
    final result = await _accountRepository.changePersonalInfo(personalInfoDto);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            status: PersonalInfoStatus.error,
            error: error.message,
          ),
        );
        _appMessageHandler.handleDialog(error);
      },
      (_) {
        emit(state.copyWith(status: PersonalInfoStatus.success));
      },
    );
  }

  void toggleEditableMode() {
    emit(state.copyWith(isEditable: !state.isEditable, myInfo: state.myInfo));
  }
}
