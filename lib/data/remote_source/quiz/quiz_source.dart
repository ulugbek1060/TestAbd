import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/quiz/models/answer_response.dart';
import 'package:testabd/data/remote_source/quiz/models/followed_questions_response.dart';
import 'package:testabd/data/remote_source/quiz/models/topic_related_questions_response.dart';
import 'package:testabd/data/remote_source/quiz/models/user_question_response.dart';

abstract class QuizSource {

  /// https://backend.testabd.uz/quiz/recommended/followed-questions/?page=1&page_size=10
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

  /// https://backend.testabd.uz
  Future<TopicRelatedQuestionsResponse> getTopics(int userId);

  /// https://backend.testabd.uz/quiz/questions/user_questions/?user_id=37
  Future<List<UserQuestionResponse>> getUserQuestions(int userId);

}



/// =========================> Source implementation <=========================
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

  @override
  Future<TopicRelatedQuestionsResponse> getTopics(int userId) async {
    try {
      final response = await _dio.get(
        '/quiz/tests/by_user/$userId/',
        queryParameters: {'user_id': userId},
      );
      return TopicRelatedQuestionsResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<List<UserQuestionResponse>> getUserQuestions(int userId) async {
    try {
      final response = await _dio.get(
        '/quiz/questions/user_questions/',
        queryParameters: {'user_id': userId},
      );
      final list = (response.data as List)
          .map((e) => UserQuestionResponse.fromJson(e))
          .toList();
      return list;
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

}
