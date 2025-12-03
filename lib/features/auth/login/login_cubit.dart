import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/auth/auth_repository.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthRepository repository;

  LoginCubit(this.repository) : super(const LoginState());

  void onUsernameChanged(String value) {
    /// id loading is true then stop the event
    if (state.isLoading) return;
    emit(state.copyWith(username: value, error: null));
  }

  void onPasswordChanged(String value) {
    /// id loading is true then stop the event
    if (state.isLoading) return;
    emit(state.copyWith(password: value, error: null));
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  Future<void> login() async {
    if (state.username.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(error: "Maydonlar bo‘sh bo‘lmasligi kerak"));
      return;
    }

    emit(state.copyWith(isLoading: true, error: null));

    final result = await repository.login(state.username, state.password);

    result.fold(
      (failure) {
        /// message or error
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (_) {
        emit(state.copyWith(isLoading: false, isSuccess: true));
      },
    );
  }
}
