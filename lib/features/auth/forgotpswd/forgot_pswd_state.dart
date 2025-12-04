part of 'forgot_pswd_cubit.dart';

class ForgotPswdState extends Equatable {
  final String email;
  final bool emailError;
  final bool isLoading;
  final bool isSuccess;
  final String? generalError;

  const ForgotPswdState({
    this.email = "",
    this.emailError = false,
    this.isLoading = false,
    this.isSuccess = false,
    this.generalError,
  });

  ForgotPswdState copyWith({
    String? email,
    bool? emailError,
    bool? isLoading,
    bool? isSuccess,
    String? generalError,
  }) {
    return ForgotPswdState(
      email: email ?? this.email,
      emailError: emailError ?? this.emailError,
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      generalError: generalError,
    );
  }

  @override
  List<Object?> get props => [
    email,
    emailError,
    isLoading,
    isSuccess,
    generalError,
  ];
}
