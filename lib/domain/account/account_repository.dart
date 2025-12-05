import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';

abstract class AccountRepository {
  Future<Either<AppException, MyInfoModel>> getMyInfo();
  Future<Either<AppException, NotificationModel>> getNotifications();
  Future<Either<AppException, Unit>> getStories();
}
