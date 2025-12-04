import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';

abstract class QuizRepository {
  Future<Either<AppException, Unit>> getFollowedQuestions();
  Future<Either<AppException, Unit>> getStories();
}
