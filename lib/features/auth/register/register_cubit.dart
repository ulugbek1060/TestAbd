import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/auth/auth_repository.dart';

part 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository repository;

  RegisterCubit(this.repository) : super(const RegisterState());

  // ---- Field updaters ----
  void setUsername(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(username: value, usernameError: false));
  }

  void setEmail(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(email: value, emailError: false));
  }

  void setPassword(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(password: value, passwordError: false));
  }

  void setConfirmPassword(String value) {
    if (state.isLoading) return;
    emit(
      state.copyWith(
        confirmPassword: value,
        confirmPasswordError: state.password != value,
      ),
    );
  }

  void toggleReferral(bool? value) {
    if (state.isLoading) return;
    emit(state.copyWith(hasReferral: value));
  }

  void setReferralCode(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(referralCode: value));
  }

  void togglePswdVisibility() {
    emit(state.copyWith(isPswdVisible: !state.isPswdVisible));
  }

  void toggleConfirmPswdVisibility() {
    emit(state.copyWith(isConfirmPswdVisible: !state.isConfirmPswdVisible));
  }

  // ---- Register action ----
  Future<void> register() async {
    int counter = 0;
    if (state.username.isEmpty) {
      emit(state.copyWith(usernameError: true));
      counter++;
    }
    if (state.email.isEmpty) {
      emit(state.copyWith(emailError: true));
      counter++;
    }
    if (state.password.length < 6) {
      emit(state.copyWith(passwordError: true));
      counter++;
    }

    if (state.password != state.confirmPassword || state.confirmPassword.isEmpty) {
      emit(state.copyWith(confirmPasswordError: true));
      counter++;
    }

    if (state.hasReferral && state.referralCode.isEmpty) {
      emit(state.copyWith(referralCodeError: true));
      counter++;
    }

    if (counter > 0){
      emit(state.copyWith(error: "Maydonlarni to'ldiring"));
      return;
    }

    emit(state.copyWith(isLoading: true));

    final result = await repository.register(
      username: state.username,
      email: state.email,
      password: state.password,
      referralCode: state.hasReferral ? state.referralCode : null,
    );

    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
      },
      (_) {
        emit(state.copyWith(isLoading: false, isSuccess: true));
      },
    );
  }
}
