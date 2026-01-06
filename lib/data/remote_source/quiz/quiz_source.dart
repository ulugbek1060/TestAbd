import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/remote_source/quiz/models/answer_response.dart';
import 'package:testabd/data/remote_source/quiz/models/followed_questions_response.dart';
import 'package:testabd/data/remote_source/quiz/models/my_bookmarked_quiz_response.dart';
import 'package:testabd/data/remote_source/quiz/models/random_questions_response.dart';
import 'package:testabd/data/remote_source/quiz/models/topic_related_questions_response.dart';
import 'package:testabd/data/remote_source/quiz/models/user_question_response.dart';

import 'models/block_questions_response.dart';

abstract class QuizSource {
  Future<FollowedQuestionsResponse> getFollowedQuestions(
    int page,
    int pageSize,
  );

  Future<AnswerResponse> submitAnswer(
    int questionId,
    List<int> selectedAnswers,
    int? duration,
  );

  Future<TopicRelatedQuestionsResponse> getTopics(
    int userId, {
    int? page,
    int? pageSize,
  });

  Future<List<UserQuestionResponse>> getUserQuestions(int userId);

  Future<BlockQuestionsResponse> getBlockTests(int blockId);

  Future<dynamic> bookmarkQuestions(int questionId);

  Future<MyBookmarkedQuizResponse> getBookmarkedQuiz();

  Future<RandomQuestionModel> getRandomQuestion(int page, int pageSize);
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
  Future<TopicRelatedQuestionsResponse> getTopics(
    int userId, {
    int? page,
    int? pageSize,
  }) async {
    try {
      final response = await _dio.get(
        '/quiz/tests/by_user/$userId/',
        queryParameters: {
          'user_id': userId,
          if (page != null) 'page': page,
          if (page != null) 'page_size': pageSize,
        },
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

  @override
  Future<BlockQuestionsResponse> getBlockTests(int blockId) async {
    try {
      final response = await _dio.get('/quiz/tests/$blockId/');
      return BlockQuestionsResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<RandomQuestionModel> getRandomQuestion(int page, int pageSize) async {
    try {
      final response = await _dio.get(
        '/quiz/random/',
        queryParameters: {'page': page, 'page_size': pageSize},
      );
      return RandomQuestionModel.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<dynamic> bookmarkQuestions(int questionId) async {
    // {"question":512}
    try {
      final response = await _dio.post(
        '/quiz/question-bookmarks/',
        data: {"question": questionId},
      );
      return RandomQuestionModel.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<MyBookmarkedQuizResponse> getBookmarkedQuiz() async {
    try {
      final response = await _dio.get('/quiz/question-bookmarks/');
      return MyBookmarkedQuizResponse.fromJson(response.data);
    } on DioException catch (error) {
      throw error.handleDioException();
    } catch (e, stackTrace) {
      throw UnknownException(e.toString(), stackTrace: stackTrace);
    }
  }
}
