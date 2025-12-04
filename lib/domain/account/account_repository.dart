

import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';

abstract class AccountRepository {
  Future<Either<AppException, Unit>> getMyInfo();
  Future<Either<AppException, Unit>> getNotifications();
}