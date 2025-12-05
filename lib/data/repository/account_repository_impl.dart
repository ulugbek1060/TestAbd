import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/mappers.dart';
import 'package:testabd/data/remote_source/account/account_source.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/main.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  final AccountSource _accountSource;

  AccountRepositoryImpl(this._accountSource);

  @override
  Future<Either<AppException, MyInfoModel>> getMyInfo() async {
    try {
      final result = await _accountSource.getUserInfo();
      return Right(result.toDomain());
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, NotificationModel>> getNotifications() async {
    try {
      final result = await _accountSource.notifications();
      return Right(result.toDomain());
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, Unit>> getStories() async {
    try {
      final result = await _accountSource.getStories();
      logger.d(result);
      return Right(unit);
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }
}
