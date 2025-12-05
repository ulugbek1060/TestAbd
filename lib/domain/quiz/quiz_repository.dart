import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/domain/quiz/entities/followed_quiz_model.dart';

abstract class QuizRepository {
  Future<Either<AppException, FollowedQuizModel>> getFollowedQuestions({
    required int page,
    required int pageSize,
  });
}
