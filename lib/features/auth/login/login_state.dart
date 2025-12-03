part of 'login_cubit.dart';

class LoginState extends Equatable {
  final String username;
  final String password;
  final bool isPasswordVisible;
  final bool isLoading;
  final String? error;
  final bool isSuccess;

  const LoginState({
    this.username = '',
    this.password = '',
    this.isPasswordVisible = false,
    this.isLoading = false,
    this.error,
    this.isSuccess = false,
  });

  LoginState copyWith({
    String? username,
    String? password,
    bool? isPasswordVisible,
    bool? isLoading,
    String? error,
    bool? isSuccess,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  List<Object?> get props =>
      [username, password, isPasswordVisible, isLoading, error, isSuccess];
}
