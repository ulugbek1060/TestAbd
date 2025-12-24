import 'package:equatable/equatable.dart';
import 'package:testabd/domain/quiz/entities/answer_item.dart';

import 'category_model.dart';

enum QuestionType {
  multiple,
  single,
  trueFalse;
  static QuestionType fromString(String? type) {
    if (type == 'multiple') {
      return multiple;
    } else if (type == 'single') {
      return single;
    } else if (type == 'true_false') {
      return trueFalse;
    } else {
      return multiple;
    }
  }
}

class QuizItem extends Equatable {
  final int? id;
  final int? test;
  final String? testTitle;
  final String? questionText;
  final QuestionType? questionType;
  final int? orderIndex;
  final String? media;
  final List<AnswerItem> answers;

  // used for answer submission
  final List<int> myAnswersId;

  // used for answer submission and check
  final bool isCorrect;
  final String? testDescription;
  final String? correctAnswerText;
  final String? answerLanguage;
  final int? correctCount;
  final int? wrongCount;
  final double? difficultyPercentage;
  final int? userAttemptCount;
  final User? user;
  final DateTime? createdAt;
  final String? roundImage;
  final bool? isBookmarked;
  final bool? isFollowing;
  final CategoryModel? category;
  final bool isLoading;
  final bool isCompleted;

  const QuizItem({
    this.id,
    this.test,
    this.testTitle,
    this.questionText,
    this.questionType,
    this.orderIndex,
    this.media,
    this.answers = const [],
    this.myAnswersId = const [],
    this.isCorrect = false,
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
    this.isLoading = false,
    this.isCompleted = false,
  });

  QuizItem copyWith({
    List<int>? myAnswersId,
    List<AnswerItem>? answers,
    bool? isCorrect,
    bool? isLoading,
    bool? isCompleted,
  }) {
    return QuizItem(
      id: id,
      test: test,
      testTitle: testTitle,
      questionText: questionText,
      questionType: questionType,
      orderIndex: orderIndex,
      media: media,
      answers: answers ?? this.answers,
      myAnswersId: myAnswersId ?? this.myAnswersId,
      isCorrect: isCorrect ?? this.isCorrect,
      testDescription: testDescription,
      correctAnswerText: correctAnswerText,
      answerLanguage: answerLanguage,
      correctCount: correctCount,
      wrongCount: wrongCount,
      difficultyPercentage: difficultyPercentage,
      userAttemptCount: userAttemptCount,
      user: user,
      createdAt: createdAt,
      roundImage: roundImage,
      isBookmarked: isBookmarked,
      isFollowing: isFollowing,
      category: category,
      isLoading: isLoading ?? this.isLoading,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

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
    myAnswersId,
    isCorrect,
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
    isLoading,
    isCompleted,
  ];
}

class User extends Equatable {
  final int? id;
  final String? username;
  final String? profileImage;
  final bool? isBadged;
  final bool? isPremium;
  final bool? isFollowing;

  const User({
    this.id,
    this.username,
    this.profileImage,
    this.isBadged,
    this.isPremium,
    this.isFollowing,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    profileImage,
    isBadged,
    isPremium,
    isFollowing,
  ];
}