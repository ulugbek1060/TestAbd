part of 'register_cubit.dart';


class RegisterState extends Equatable {
  final bool isLoading;
  final bool isSuccess;
  final String? error;

  final String username;
  final String email;

  final String password;
  final bool isPswdVisible;

  final String confirmPassword;
  final bool isConfirmPswdVisible;

  final bool hasReferral;
  final String referralCode;

  const RegisterState({
    this.isLoading = false,
    this.isSuccess = false,
    this.error,
    this.username = "",
    this.email = "",
    this.password = "",
    this.isPswdVisible = false,
    this.confirmPassword = "",
    this.isConfirmPswdVisible = false,
    this.hasReferral = false,
    this.referralCode = "",
  });

  RegisterState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? error,

    String? username,
    String? email,
    String? password,
    bool? isPswdVisible,
    String? confirmPassword,
    bool? isConfirmPswdVisible,
    bool? hasReferral,
    String? referralCode,
  }) {
    return RegisterState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: error,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      isPswdVisible: isPswdVisible ?? this.isPswdVisible,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      isConfirmPswdVisible: isConfirmPswdVisible ?? this.isConfirmPswdVisible,
      hasReferral: hasReferral ?? this.hasReferral,
      referralCode: referralCode ?? this.referralCode,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    isSuccess,
    error,
    username,
    email,
    password,
    isPswdVisible,
    confirmPassword,
    isConfirmPswdVisible,
    hasReferral,
    referralCode,
  ];
}
