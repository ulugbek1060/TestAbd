
import 'package:equatable/equatable.dart';
import 'package:testabd/data/remote_source/quiz/responses/followed_quiz_response.dart';
import 'package:testabd/domain/quiz/entities/quiz_user.dart';

class QuizItem extends Equatable {
  final int? id;
  final int? test;
  final String? testTitle;
  final String? questionText;
  final String? questionType;
  final int? orderIndex;
  final String? media;
  final List<AnswerModel> answers;
  final String? testDescription;
  final String? correctAnswerText;
  final String? answerLanguage;
  final String? correctCount;
  final String? wrongCount;
  final double? difficultyPercentage;
  final String? userAttemptCount;
  final QuizUser? user;
  final DateTime? createdAt;
  final String? roundImage;
  final String? isBookmarked;
  final String? isFollowing;
  final int? category;

  const QuizItem({
    this.id,
    this.test,
    this.testTitle,
    this.questionText,
    this.questionType,
    this.orderIndex,
    this.media,
    this.answers = const [],
    this.testDescription,
    this.correctAnswerText,
    this.answerLanguage,
    this.correctCount,
    this.wrongCount,
    this.difficultyPercentage,
    this.userAttemptCount,
    this.user,
    this.createdAt,
    this.roundImage,
    this.isBookmarked,
    this.isFollowing,
    this.category,
  });

  @override
  List<Object?> get props => [
    id,
    test,
    testTitle,
    questionText,
    questionType,
    orderIndex,
    media,
    answers,
    testDescription,
    correctAnswerText,
    answerLanguage,
    correctCount,
    wrongCount,
    difficultyPercentage,
    userAttemptCount,
    user,
    createdAt,
    roundImage,
    isBookmarked,
    isFollowing,
    category,
  ];
}
