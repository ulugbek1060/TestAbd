import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_question_response.freezed.dart';
part 'user_question_response.g.dart';

@freezed
class UserQuestionResponse with _$UserQuestionResponse {
  const factory UserQuestionResponse({
    int? id,
    int? test,
    String? test_title,
    String? question_text,
    String? question_type,
    int? order_index,
    String? media,
    @Default([]) List<UserAnswerResponse> answers,
    String? test_description,
    String? correct_answer_text,
    String? answer_language,
    int? correct_count,
    int? wrong_count,
    double? difficulty_percentage,
    int? user_attempt_count,
    UserShortResponse? user,
    String? created_at,
    String? round_image,
    bool? is_bookmarked,
    bool? is_following,
    Category? category,
  }) = _UserQuestionResponse;

  factory UserQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$UserQuestionResponseFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    int? total_tests,
    int? total_questions,
    String? title,
    String? slug,
    String? description,
    String? emoji,
    String? image,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class UserAnswerResponse with _$UserAnswerResponse {
  const factory UserAnswerResponse({
    int? id,
    String? letter,
    String? answer_text,
    bool? is_correct,
  }) = _UserAnswerResponse;

  factory UserAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerResponseFromJson(json);
}

@freezed
class UserShortResponse with _$UserShortResponse {
  const factory UserShortResponse({
    int? id,
    String? username,
    String? profile_image,
    bool? is_badged,
    bool? is_premium,
    bool? is_following,
  }) = _UserShortResponse;

  factory UserShortResponse.fromJson(Map<String, dynamic> json) =>
      _$UserShortResponseFromJson(json);
}
