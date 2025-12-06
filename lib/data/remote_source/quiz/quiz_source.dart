import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/quiz/responses/followed_questions_response.dart';
import 'package:testabd/main.dart';

@injectable
class QuizSource {
  final Dio _dio;

  QuizSource(this._dio);

  Future<FollowedQuestionsResponse> getFollowedQuestions(
    int page,
    int pageSize,
  ) async {
    try {
      final response = await _dio.get(
        '/quiz/recommended/followed-questions/',
        queryParameters: {
          'page': page,
          'page_size': pageSize,
        },
      );
      return FollowedQuestionsResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  /// /submit-answer

  /// /question-bookmarks

  /// /quiz/questions/?page=2


}
