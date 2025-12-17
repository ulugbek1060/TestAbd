import 'package:equatable/equatable.dart';

class TopicsModel extends Equatable {
  final int? count;
  final String? next;
  final String? previous;
  final List<TopicItem> results;

  const TopicsModel({
    this.count,
    this.next,
    this.previous,
    this.results = const [],
  });

  @override
  List<Object?> get props => [count, next, previous, results];
}

// -------------------------------------------------------------
class TopicItem extends Equatable {
  final int? id;
  final TopicUserShort? user;
  final String? title;
  final String? description;
  final String? category;
  final String? visibility;
  final String? accessMode;
  final String? participantRoles;
  final int? maxParticipants;
  final String? startTime;
  final String? endTime;
  final int? minScoreToFinish;
  final int? participantCountToFinish;
  final String? country;
  final String? region;
  final String? district;
  final bool? isRegionPremium;
  final DateTime? createdAt;
  final double? difficultyPercentage;
  final int? totalQuestions;
  final List<TopicQuestion> questions;

  const TopicItem({
    this.id,
    this.user,
    this.title,
    this.description,
    this.category,
    this.visibility,
    this.accessMode,
    this.participantRoles,
    this.maxParticipants,
    this.startTime,
    this.endTime,
    this.minScoreToFinish,
    this.participantCountToFinish,
    this.country,
    this.region,
    this.district,
    this.isRegionPremium,
    this.createdAt,
    this.difficultyPercentage,
    this.totalQuestions,
    this.questions = const [],
  });

  @override
  List<Object?> get props => [
    id,
    user,
    title,
    description,
    category,
    visibility,
    accessMode,
    participantRoles,
    maxParticipants,
    startTime,
    endTime,
    minScoreToFinish,
    participantCountToFinish,
    country,
    region,
    district,
    isRegionPremium,
    createdAt,
    difficultyPercentage,
    totalQuestions,
    questions,
  ];
}

// -------------------------------------------------------------
class TopicQuestion extends Equatable {
  final int? id;
  final int? test;
  final String? testTitle;
  final String? questionText;
  final String? questionType;
  final int? orderIndex;
  final String? media;
  final List<TopicAnswer> answers;
  final String? testDescription;
  final String? correctAnswerText;
  final String? answerLanguage;
  final int? correctCount;
  final int? wrongCount;
  final double? difficultyPercentage;
  final int? userAttemptCount;
  final TopicUserShort? user;
  final String? createdAt;
  final String? roundImage;
  final bool? isBookmarked;
  final bool? isFollowing;
  final int? category;

  const TopicQuestion({
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

// -------------------------------------------------------------
class TopicAnswer extends Equatable {
  final int? id;
  final String? letter;
  final String? answerText;
  final bool? isCorrect;

  const TopicAnswer({
    this.id,
    this.letter,
    this.answerText,
    this.isCorrect,
  });

  @override
  List<Object?> get props => [id, letter, answerText, isCorrect];
}

// -------------------------------------------------------------
class TopicUserShort extends Equatable {
  final int? id;
  final String? username;
  final String? profileImage;
  final bool? isBadged;
  final bool? isPremium;
  final bool? isFollowing;

  const TopicUserShort({
    this.id,
    this.username,
    this.profileImage,
    this.isBadged,
    this.isPremium,
    this.isFollowing,
  });

  @override
  List<Object?> get props =>
      [id, username, profileImage, isBadged, isPremium, isFollowing];
}
