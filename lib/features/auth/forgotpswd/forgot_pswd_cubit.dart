import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/auth/auth_repository.dart';

part 'forgot_pswd_state.dart';

@injectable
class ForgotPswdCubit extends Cubit<ForgotPswdState> {
  final AuthRepository _repository;

  ForgotPswdCubit(this._repository) : super(ForgotPswdState());

  void onEmailChanged(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(email: value, emailError: false));
  }

  Future<void> submit() async {
    // Reset errors
    emit(state.copyWith(emailError: false, generalError: null));

    // Empty email check
    if (state.email.trim().isEmpty) {
      emit(state.copyWith(emailError: true));
      return;
    }

    // Email format check
    if (!state.email.contains("@")) {
      emit(state.copyWith(emailError: true));
      return;
    }

    emit(state.copyWith(isLoading: true));

    // try {
    //   await _repository.sendPasswordReset(state.email);
    //
    //   emit(state.copyWith(isLoading: false, isSuccess: true));
    // } catch (e) {
    //   emit(state.copyWith(isLoading: false, generalError: e.toString()));
    // }
  }
}
