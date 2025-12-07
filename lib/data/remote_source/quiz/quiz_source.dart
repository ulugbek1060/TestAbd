import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/quiz/responses/answer_response.dart';
import 'package:testabd/data/remote_source/quiz/responses/followed_questions_response.dart';

abstract class QuizSource {
  Future<FollowedQuestionsResponse> getFollowedQuestions(
    int page,
    int pageSize,
  );

  /// {"question":508,"selected_answer_ids":[1378],"duration":2}
  Future<AnswerResponse> submitAnswer(
    int questionId,
    List<int> selectedAnswers,
    int? duration,
  );
}

@Injectable(as: QuizSource)
class QuizSourceImpl implements QuizSource {
  final Dio _dio;

  QuizSourceImpl(this._dio);

  @override
  Future<FollowedQuestionsResponse> getFollowedQuestions(
    int page,
    int pageSize,
  ) async {
    try {
      final response = await _dio.get(
        '/quiz/recommended/followed-questions/',
        queryParameters: {'page': page, 'page_size': pageSize},
      );
      return FollowedQuestionsResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<AnswerResponse> submitAnswer(
    int questionId,
    List<int> selectedAnswers,
    int? duration,
  ) async {
    try {
      final response = await _dio.post(
        '/quiz/submit-answer/',
        data: {
          "question": questionId,
          "selected_answer_ids": selectedAnswers,
          "duration": duration ?? 2,
        },
      );
      return AnswerResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }
}
