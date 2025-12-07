import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/domain/quiz/entities/answer_model.dart';
import 'package:testabd/domain/quiz/entities/followed_quiz_model.dart';

abstract class QuizRepository {
  Future<Either<AppException, FollowedQuizModel>> getFollowedQuestions({
    required int page,
    required int pageSize,
  });

  Future<Either<AppException, AnswerModel>> submitAnswer({
    required int questionId,
    required List<int> selectedAnswers,
    int? duration,
  });
}
