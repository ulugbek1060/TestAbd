import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/data/mappers.dart';
import 'package:testabd/data/remote_source/quiz/quiz_source.dart';
import 'package:testabd/domain/quiz/entities/followed_quiz_model.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl extends QuizRepository {
  final QuizSource _quizSource;

  QuizRepositoryImpl(this._quizSource);

  @override
  Future<Either<AppException, FollowedQuizModel>> getFollowedQuestions({
    required int page,
    required int pageSize,
  }) async {
    try {
      final result = await _quizSource.getFollowedQuestions(page, pageSize);
      return Right(result.toDomain());
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnknownException(e.toString(), stackTrace: stackTrace));
    }
  }
}
