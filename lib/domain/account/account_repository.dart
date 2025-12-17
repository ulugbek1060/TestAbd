import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/domain/account/entities/user_profile_model.dart';

abstract class AccountRepository {
  Future<Either<AppException, MyInfoModel>> getMyInfo();
  Future<Either<AppException, NotificationModel>> getNotifications();
  Future<Either<AppException, Unit>> getStories();
  Future<Either<AppException, UserProfileModel>> getUserProfile(String username);
  Future<Either<AppException, UserConnectionsModel>> getUserConnections(int userId);
  Future<Either<AppException, String>> followUser(int userId);
}
