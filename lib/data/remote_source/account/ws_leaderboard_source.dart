import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/account/model/leaderboard_response.dart';

abstract class WsLeaderboardSource {
  Future<LeaderboardResponse> getLeaderboard(int page, int pageSize);
}

@Injectable(as: WsLeaderboardSource)
class WsLeaderboardSourceImpl implements WsLeaderboardSource {
  final Dio _dio;

  WsLeaderboardSourceImpl(this._dio);

  /// /accounts/leaderboard/?page=1
  @override
  Future<LeaderboardResponse> getLeaderboard(int page, int pageSize) async {
    try {
      final response = await _dio.post("/accounts/leaderboard/?page=$page");
      return LeaderboardResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }
}
