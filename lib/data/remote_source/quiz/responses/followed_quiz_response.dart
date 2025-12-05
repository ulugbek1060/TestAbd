import 'package:freezed_annotation/freezed_annotation.dart';

part 'followed_quiz_response.freezed.dart';
part 'followed_quiz_response.g.dart';

@freezed
class FollowedQuizResponse with _$FollowedQuizResponse {
  const factory FollowedQuizResponse({
    int? count,
    String? next,
    String? previous,
    @Default([]) List<FollowedQuizItem> results,
  }) = _FollowedQuizResponse;

  factory FollowedQuizResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowedQuizResponseFromJson(json);
}

@freezed
class FollowedQuizItem with _$FollowedQuizItem {
  const factory FollowedQuizItem({
    int? id,
    int? test,
    String? testTitle,
    String? questionText,
    String? questionType,
    int? orderIndex,
    String? media,
    @Default([]) List<AnswerModel> answers,
    String? testDescription,
    String? correctAnswerText,
    String? answerLanguage,
    String? correctCount,
    String? wrongCount,
    double? difficultyPercentage,
    String? userAttemptCount,
    FollowUser? user,
    DateTime? createdAt,
    String? roundImage,
    String? isBookmarked,
    String? isFollowing,
    int? category,
  }) = _FollowedQuizItem;

  factory FollowedQuizItem.fromJson(Map<String, dynamic> json) =>
      _$FollowedQuizItemFromJson(json);
}

@freezed
class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    int? id,
    String? letter,
    String? answerText,
    bool? isCorrect,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}

@freezed
class FollowUser with _$FollowUser {
  const factory FollowUser({
    int? id,
    String? username,
    String? profileImage,
    bool? isBadged,
    bool? isPremium,
    String? isFollowing,
  }) = _FollowUser;

  factory FollowUser.fromJson(Map<String, dynamic> json) =>
      _$FollowUserFromJson(json);
}
