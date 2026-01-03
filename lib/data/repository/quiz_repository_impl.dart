import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/mappers.dart';
import 'package:testabd/data/remote_source/quiz/quiz_source.dart';
import 'package:testabd/domain/quiz/entities/check_answer_model.dart';
import 'package:testabd/domain/quiz/entities/global_quiz_model.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/domain/quiz/entities/topics_model.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl extends QuizRepository {
  final QuizSource _quizSource;

  QuizRepositoryImpl(this._quizSource);

  @override
  Future<Either<AppException, GlobalQuizModel>> getFollowedQuestions({
    required int page,
    required int pageSize,
  }) async {
    try {
      final result = await _quizSource.getFollowedQuestions(page, pageSize);
      // return Right(result.toDomain());
      return Left(UnknownException('Error'));
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, CheckAnswerModel>> submitAnswer({
    required int questionId,
    required List<int> selectedAnswers,
    int? duration,
  }) async {
    try {
      final result = await _quizSource.submitAnswer(
        questionId,
        selectedAnswers,
        duration,
      );
      return Right(result.toDomain());
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, TopicsModel>> getTopics(
    int userId, {
    int? page,
    int? pageSize,
  }) async {
    try {
      final result = await _quizSource.getTopics(
        userId,
        page: page,
        pageSize: pageSize,
      );
      return Right(result.toDomain());
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, List<QuizItem>>> getUserQuestions(
    int userId,
  ) async {
    try {
      final result = await _quizSource.getUserQuestions(userId);
      final list = result.map((e) => e.toDomain()).toList();
      return Right(list);
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }
}
