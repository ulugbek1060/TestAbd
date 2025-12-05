import 'package:testabd/data/remote_source/account/model/my_info_response.dart';
import 'package:testabd/data/remote_source/account/model/user_register_response.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/domain/auth/entities/register_model.dart';
import 'package:testabd/domain/quiz/entities/followed_quiz_model.dart';

import 'remote_source/account/model/notifications_response.dart';
import 'remote_source/quiz/responses/followed_quiz_response.dart';

extension UserMapper on UserRegisterResponse {
  RegisterModel toDomain() => RegisterModel(
    id: id,
    username: username,
    email: email,
    token: token,
    referralCode: referralCode,
  );
}

extension MyInfoMapper on MyInfoResponse {
  MyInfoModel toDomain() => MyInfoModel(

  );
}


extension NotificationMapper on NotificationsResponse {
  NotificationModel toDomain() => NotificationModel();
}

extension FollowedQuizMapper on FollowedQuizResponse {
  FollowedQuizModel toDomain() => FollowedQuizModel();
}