import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_bookmarked_quiz_response.freezed.dart';

part 'my_bookmarked_quiz_response.g.dart';

@freezed
class MyBookmarkedQuizResponse with _$MyBookmarkedQuizResponse {
  const factory MyBookmarkedQuizResponse({
    int? count,
    String? next,
    String? previous,
    @Default([]) List<BookmarkedQuizResult> results,
  }) = _MyBookmarkedQuizResponse;

  factory MyBookmarkedQuizResponse.fromJson(Map<String, dynamic> json) =>
      _$MyBookmarkedQuizResponseFromJson(json);
}

/* -------------------- RESULT -------------------- */

@freezed
class BookmarkedQuizResult with _$BookmarkedQuizResult {
  const factory BookmarkedQuizResult({
    int? id,
    QuizUser? user,
    @JsonKey(name: 'question_detail') QuestionDetail? questionDetail,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _BookmarkedQuizResult;

  factory BookmarkedQuizResult.fromJson(Map<String, dynamic> json) =>
      _$BookmarkedQuizResultFromJson(json);
}

/* -------------------- USER -------------------- */

@freezed
class QuizUser with _$QuizUser {
  const factory QuizUser({
    int? id,
    String? username,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'is_badged') bool? isBadged,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'is_following') bool? isFollowing,
  }) = _QuizUser;

  factory QuizUser.fromJson(Map<String, dynamic> json) =>
      _$QuizUserFromJson(json);
}

/* -------------------- QUESTION DETAIL -------------------- */

@freezed
class QuestionDetail with _$QuestionDetail {
  const factory QuestionDetail({
    int? id,
    @JsonKey(name: 'question_text') String? questionText,
    @JsonKey(name: 'question_type') String? questionType,
    @JsonKey(name: 'difficulty_percentage') double? difficultyPercentage,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'test_title') String? testTitle,
    Category? category,
  }) = _QuestionDetail;

  factory QuestionDetail.fromJson(Map<String, dynamic> json) =>
      _$QuestionDetailFromJson(json);
}

/* -------------------- CATEGORY -------------------- */

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    @JsonKey(name: 'total_tests') int? totalTests,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    String? title,
    String? slug,
    String? description,
    String? emoji,
    String? image,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
