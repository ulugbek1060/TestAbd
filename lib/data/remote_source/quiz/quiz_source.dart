import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/quiz/responses/followed_quiz_response.dart';

@injectable
class QuizSource {
  final Dio _dio;

  QuizSource(this._dio);

  Future<FollowedQuizResponse> getFollowedQuestions() async {
    try {
      final response = await _dio.get('quiz/recommended/followed-questions/');
      return FollowedQuizResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

}