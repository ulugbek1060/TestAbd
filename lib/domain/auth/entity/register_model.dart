class RegisterModel {
  final int? id;
  final String? username;
  final String? email;
  final String? password;
  final String? token;
  final String? referralCode;

  RegisterModel({
    this.id,
    this.username,
    this.email,
    this.password,
    this.token,
    this.referralCode,
  });

  @override
  String toString() =>
      'RegisterModel(id: $id, username: $username, email: $email, password: $password, token: $token, referralCode: $referralCode)';
}
