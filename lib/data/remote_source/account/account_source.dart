import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/account/model/country_item_response.dart';
import 'package:testabd/data/remote_source/account/model/district_item_response.dart';
import 'package:testabd/data/remote_source/account/model/region_item_response.dart';
import 'package:testabd/data/remote_source/account/model/user_connections_response.dart';
import 'package:testabd/data/remote_source/account/model/user_profile_response.dart';
import 'package:testabd/data/remote_source/account/model/my_info_response.dart';
import 'package:testabd/data/remote_source/account/model/notifications_response.dart';
import 'package:testabd/domain/account/entities/personal_info_dto.dart';
import 'package:testabd/main.dart';

abstract class AccountSource {
  Future<MyInfoResponse> getUserInfo();
  Future<NotificationsResponse> notifications();
  Future<dynamic> getStories();
  Future<UserProfileResponse> getProfile(String username);
  Future<UserConnectionsResponse> getFollowers(int userId);
  Future<String> followUser(int userId);
  Future<MyInfoResponse> changePersonalInfo(Map<String, dynamic> data);
  Future<List<CountryItemResponse>> getCountries();
  Future<List<RegionItemResponse>> getRegions(int? countryId);
  Future<List<DistrictItemResponse>> getDistricts(int? regionId);
}

@Injectable(as: AccountSource)
class AccountSourceImpl implements AccountSource {
  final Dio _dio;

  AccountSourceImpl(this._dio);

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

  @override
  Future<UserConnectionsResponse> getFollowers(int userId) async {
    try {
      final response = await _dio.get("/accounts/followers/$userId");
      return UserConnectionsResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

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

  @override
  Future<MyInfoResponse> changePersonalInfo(Map<String, dynamic> data) async {
    try {
      final response = await _dio.patch("/accounts/me/update/", data: data);
      return MyInfoResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<List<CountryItemResponse>> getCountries() async {
    try {
      final response = await _dio.get("/accounts/countries/");
      return (response.data as List<dynamic>)
          .map((e) => CountryItemResponse.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<List<RegionItemResponse>> getRegions(int? countryId) async {
    try {
      final response = await _dio.get("/accounts/regions/$countryId/");
      return (response.data as List<dynamic>)
          .map((e) => RegionItemResponse.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<List<DistrictItemResponse>> getDistricts(int? regionId) async {
    try {
      final response = await _dio.get("/accounts/districts/$regionId/");
      return (response.data as List<dynamic>)
          .map((e) => DistrictItemResponse.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }
}
