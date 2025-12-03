import 'package:testabd/data/remote_source/account/model/user_register_response.dart';
import 'package:testabd/domain/auth/entity/register_model.dart';

extension UserMapper on UserRegisterResponse {
  RegisterModel toDomain() => RegisterModel(
    id: id,
    username: username,
    email: email,
    token: token,
    referralCode: referralCode,
  );
}


