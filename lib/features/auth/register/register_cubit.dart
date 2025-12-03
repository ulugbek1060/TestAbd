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
    emit(state.copyWith(username: value));
  }

  void setEmail(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(email: value));
  }

  void setPassword(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(password: value));
  }

  void setConfirmPassword(String value) {
    if (state.isLoading) return;
    emit(state.copyWith(confirmPassword: value));
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
    if (state.username.isEmpty) {
      emit(state.copyWith(error: "Foydalanuvchi nomi kiritilmadi"));
      return;
    }
    if (state.email.isEmpty) {
      emit(state.copyWith(error: "Email manzili kiritilmadi"));
      return;
    }
    if (state.password.length < 6) {
      emit(
        state.copyWith(
          error: "Parol kamida 6 ta belgidan iborat bo‘lishi kerak",
        ),
      );
      return;
    }

    if (state.password != state.confirmPassword) {
      emit(state.copyWith(error: "Parollar mos emas"));
      return;
    }

    if (state.hasReferral && state.referralCode.isEmpty) {
      emit(state.copyWith(error: "Referral kod kiritilmadi"));
      return;
    }

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
