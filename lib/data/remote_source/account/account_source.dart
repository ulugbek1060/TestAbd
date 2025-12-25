import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/account/model/user_connections_response.dart';
import 'package:testabd/data/remote_source/account/model/user_profile_response.dart';
import 'package:testabd/data/remote_source/account/model/my_info_response.dart';
import 'package:testabd/data/remote_source/account/model/notifications_response.dart';



abstract class AccountSource {
  Future<MyInfoResponse> getUserInfo();
  Future<NotificationsResponse> notifications();
  Future<dynamic> getStories();
  Future<UserProfileResponse> getProfile(String username);
  Future<UserConnectionsResponse> getFollowers(int userId);
  Future<String> followUser(int userId);
}

@Injectable(as: AccountSource)
class AccountSourceImpl implements AccountSource{
  final Dio _dio;

  AccountSourceImpl(this._dio);

  /// /accounts/me/
  @override
  Future<MyInfoResponse> getUserInfo() async {
    try {
      final response = await _dio.get("/accounts/me/");
      return MyInfoResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/notifications/
  @override
  Future<NotificationsResponse> notifications() async {
    try {
      final response = await _dio.get("/accounts/notifications/");
      return NotificationsResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /account/stories/
  @override
  Future<dynamic> getStories() async {
    try {
      final response = await _dio.get("/account/stories/");
      return response.data;
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/profile/{username}
  @override
  Future<UserProfileResponse> getProfile(String username) async {
    try {
      final response = await _dio.get("/accounts/profile/$username");
      return UserProfileResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// accounts/followers/{userId}/
  @override
  Future<UserConnectionsResponse> getFollowers(int userId)  async {
    try {
      final response = await _dio.get("/accounts/followers/$userId");
      return UserConnectionsResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/followers/{userId}/toggle/
  @override
  Future<String> followUser(int userId) async {
    try {
      final response = await _dio.post("/accounts/followers/$userId/toggle/");
      return response.data.toString();
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

}
