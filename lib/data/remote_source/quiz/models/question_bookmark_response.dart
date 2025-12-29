import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_bookmark_response.freezed.dart';
part 'question_bookmark_response.g.dart';

@freezed
class QuestionBookmarkResponse with _$QuestionBookmarkResponse {
  const factory QuestionBookmarkResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user') BookmarkUserResponse? user,
    @JsonKey(name: 'question_detail')
    BookmarkQuestionDetailResponse? questionDetail,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _QuestionBookmarkResponse;

  factory QuestionBookmarkResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionBookmarkResponseFromJson(json);
}

@freezed
class BookmarkUserResponse with _$BookmarkUserResponse {
  const factory BookmarkUserResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'is_badged') bool? isBadged,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'is_following') bool? isFollowing,
  }) = _BookmarkUserResponse;

  factory BookmarkUserResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkUserResponseFromJson(json);
}

@freezed
class BookmarkQuestionDetailResponse with _$BookmarkQuestionDetailResponse {
  const factory BookmarkQuestionDetailResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'question_text') String? questionText,
    @JsonKey(name: 'question_type') String? questionType,
    @JsonKey(name: 'difficulty_percentage') double? difficultyPercentage,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'test_title') String? testTitle,
    @JsonKey(name: 'category') BookmarkCategoryResponse? category,
  }) = _BookmarkQuestionDetailResponse;

  factory BookmarkQuestionDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkQuestionDetailResponseFromJson(json);
}

@freezed
class BookmarkCategoryResponse with _$BookmarkCategoryResponse {
  const factory BookmarkCategoryResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'total_tests') int? totalTests,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'emoji') String? emoji,
    @JsonKey(name: 'image') String? image,
  }) = _BookmarkCategoryResponse;

  factory BookmarkCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarkCategoryResponseFromJson(json);
}
