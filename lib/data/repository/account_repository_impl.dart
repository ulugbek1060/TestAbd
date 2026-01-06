import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/local_source/my_info_hive_service.dart';
import 'package:testabd/data/remote_source/account/account_source.dart';
import 'package:testabd/data/remote_source/account/ws_leaderboard_source.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/account/entities/leaderboard_model.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/domain/account/entities/user_profile_model.dart';
import 'package:testabd/main.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  final AccountSource _accountSource;
  final MyInfoHiveService _hiveService;
  final WsLeaderboardSource _leaderboardSource;

  AccountRepositoryImpl(
    this._accountSource,
    this._hiveService,
    this._leaderboardSource,
  );

  @override
  Stream<MyInfoModel?> get userInfoStream =>
      _hiveService.userStream.map((e) => MyInfoModel.fromDb(e));

  @override
  Future<Either<AppException, MyInfoModel>> fetchMyInfo() async {
    try {
      final result = await _accountSource.getUserInfo();
      final model = MyInfoModel.fromResponse(result);
      final dbModel = MyInfoModel.toDb(model);
      _hiveService.saveMyInfo(dbModel);
      return Right(model);
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
      return Right(NotificationModel.fromResponse(result));
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

  @override
  Future<Either<AppException, UserProfileModel>> getUserProfile(
    String username,
  ) async {
    try {
      final result = await _accountSource.getProfile(username);
      return Right(UserProfileModel.fromResponse(result));
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, UserConnectionsModel>> getUserConnections(
    int userId,
  ) async {
    try {
      final result = await _accountSource.getFollowers(userId);
      return Right(UserConnectionsModel.fromResponse(result));
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, String>> followUser(int userId) async {
    try {
      final result = await _accountSource.followUser(userId);
      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, LeaderboardModel>> getLeaderboard(
    int page,
    int pageSize,
  ) async {
    try {
      final result = await _leaderboardSource.getLeaderboard(page, pageSize);
      return Right(LeaderboardModel.fromResponse(result));
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }
}

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  final LeaderboardSocketService _service;

  LeaderboardRepositoryImpl(this._service);

  @override
  void closeWebSocket() => _service.closeWebSocket();

  @override
  Future<void> openWebSocket(Function(dynamic data) dataReceived) async {
    _service.connectWebSocket(dataReceived);
  }
}
