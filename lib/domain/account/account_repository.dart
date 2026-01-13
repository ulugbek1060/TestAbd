import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/domain/account/entities/country_model.dart';
import 'package:testabd/domain/account/entities/leaderboard_model.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/domain/account/entities/personal_info_dto.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/domain/account/entities/user_profile_model.dart';

abstract class AccountRepository {
  Stream<MyInfoModel?> get userInfoStream;
  Future<Either<AppException, MyInfoModel>> fetchMyInfo();
  Future<Either<AppException, NotificationModel>> getNotifications();
  Future<Either<AppException, Unit>> getStories();
  Future<Either<AppException, UserProfileModel>> getUserProfile(String username);
  Future<Either<AppException, UserConnectionsModel>> getUserConnections(int userId);
  Future<Either<AppException, String>> followUser(int userId);
  Future<Either<AppException, LeaderboardModel>> getLeaderboard(int page, int pageSize);
  Future<Either<AppException, Unit>> changePersonalInfo(PersonalInfoDto personalInfoDto);
  Future<Either<AppException, List<CountryModel>>> getCountries();
}

abstract class LeaderboardRepository {
  Future<void> openWebSocket(Function(dynamic data) dataReceived);
  void closeWebSocket();
}
