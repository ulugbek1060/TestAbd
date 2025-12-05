import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/account/model/login_response.dart';
import 'package:testabd/data/remote_source/account/model/my_info_response.dart';
import 'package:testabd/data/remote_source/account/model/notifications_response.dart';
import 'package:testabd/data/remote_source/account/model/user_register_response.dart';

@injectable
class AccountSource {
  final Dio _dio;

  AccountSource(this._dio);

  /// /accounts/register/
  Future<UserRegisterResponse> register(
    String username,
    String email,
    String password,
    String? referralCode,
  ) async {
    try {
      final response = await _dio.post(
        "/accounts/register/",
        data: {
          "username": username,
          "email": email,
          "password": password,
          if (referralCode != null) "referral_code": referralCode,
        },
      );
      return UserRegisterResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw BadRequestException(
          e.response?.data['username'].toString() ?? "Unknown error",
        );
      }
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/login/
  Future<LoginResponse> login(String username, String password) async {
    try {
      final response = await _dio.post(
        "/accounts/login/",
        data: {"username": username, "password": password},
      );
      return LoginResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/resend-verification-email/{email}/
  Future<dynamic> resendVerificationEmail(String email) async {
    try {
      final response = await _dio.post("/accounts/resend-verification-email/$email/");
      return response.data;
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/logout/
  Future<dynamic> logout() async {
    try {
      final response = await _dio.post("/accounts/logout/");
      return response.data;
    } on DioException catch (e) {
      if (e.response?.statusCode == 403) {
        // TODO: handle error
        throw BadRequestException(e.response?.data['detail']);
      }
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /accounts/me/
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
}
