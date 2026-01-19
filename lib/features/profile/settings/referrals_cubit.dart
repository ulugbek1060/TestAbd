import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/profile/settings/referrals_state.dart';

@injectable
class ReferralsCubit extends Cubit<ReferralsState> {
  final AccountRepository _accountRepository;
  final AppMessageHandler _appMessageHandler;

  ReferralsCubit(this._accountRepository, this._appMessageHandler)
    : super(ReferralsState());

  Future<void> fetchReferrals() async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true));

    final result = await _accountRepository.getReferralsList(1);
    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
        _appMessageHandler.handleDialog(error);
      },
      (value) {
        emit(state.copyWith(referrals: value, isLoading: false));
      },
    );
  }
}
