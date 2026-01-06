
import 'package:testabd/domain/entity/user_item_model.dart';
import 'package:testabd/domain/entity/answer_item_model.dart';

class BlockQuestionsModel {
  final int? id;
  final UserItemModel? user;
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
  final String? createdAt;
  final double? difficultyPercentage;
  final int? totalQuestions;
  final List<BlockQuestionItem>? questions;
  final bool? isBookmarked;
  final int? participantCount;
  final double? averageQuestionDifficulty;
  final double? averageCompletionTimeMinutes;
  final int? totalCorrectAttempts;
  final int? totalWrongAttempts;

  const BlockQuestionsModel({
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
    this.questions,
    this.isBookmarked,
    this.participantCount,
    this.averageQuestionDifficulty,
    this.averageCompletionTimeMinutes,
    this.totalCorrectAttempts,
    this.totalWrongAttempts,
  });
}

class BlockQuestionItem {
  final int? id;
  final int? test;
  final String? testTitle;
  final String? questionText;
  final String? questionType;
  final int? orderIndex;
  final String? media;
  final List<AnswerItemModel>? answers;
  final String? testDescription;
  final String? correctAnswerText;
  final String? answerLanguage;
  final int? correctCount;
  final int? wrongCount;
  final double? difficultyPercentage;
  final int? userAttemptCount;
  final UserItemModel? user;
  final String? createdAt;
  final String? roundImage;
  final bool? isBookmarked;
  final bool? isFollowing;
  final int? category;

  const BlockQuestionItem({
    this.id,
    this.test,
    this.testTitle,
    this.questionText,
    this.questionType,
    this.orderIndex,
    this.media,
    this.answers,
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
}


