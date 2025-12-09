import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/user_profile/user_profile_state.dart';

@injectable
class UserProfileCubit extends Cubit<UserProfileState> {
  final AccountRepository _accountRepository;
  final String username;

  @factoryMethod
  UserProfileCubit.create(
      @factoryParam this.username,
      this._accountRepository
      ) : super(UserProfileState());

  Future<void> loadUserDetail() async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _accountRepository.getUserProfile(username);
    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
      },
      (value) {
        emit(state.copyWith(isLoading: false, profile: value));
      },
    );
  }
}
