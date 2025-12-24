import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_related_questions_response.freezed.dart';
part 'topic_related_questions_response.g.dart';

@freezed
class TopicRelatedQuestionsResponse with _$TopicRelatedQuestionsResponse {
  const factory TopicRelatedQuestionsResponse({
    int? count,
    String? next,
    String? previous,
    @Default([]) List<TopicQuestionItemResponse> results,
  }) = _TopicRelatedQuestionsResponse;

  factory TopicRelatedQuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicRelatedQuestionsResponseFromJson(json);
}

@freezed
class TopicQuestionItemResponse with _$TopicQuestionItemResponse {
  const factory TopicQuestionItemResponse({
    int? id,
    TopicUserShortResponse? user,
    String? title,
    String? description,
    String? category,
    String? visibility,
    String? access_mode,
    String? participant_roles,
    int? max_participants,
    String? start_time,
    String? end_time,
    int? min_score_to_finish,
    int? participant_count_to_finish,
    String? country,
    String? region,
    String? district,
    bool? is_region_premium,
    String? created_at,
    double? difficulty_percentage,
    int? total_questions,
    @Default([]) List<TopicQuestionResponse> questions,
  }) = _TopicQuestionItemResponse;

  factory TopicQuestionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicQuestionItemResponseFromJson(json);
}

@freezed
class TopicQuestionResponse with _$TopicQuestionResponse {
  const factory TopicQuestionResponse({
    int? id,
    int? test,
    String? test_title,
    String? question_text,
    String? question_type,
    int? order_index,
    String? media,
    @Default([]) List<TopicAnswerResponse> answers,
    String? test_description,
    String? correct_answer_text,
    String? answer_language,
    int? correct_count,
    int? wrong_count,
    double? difficulty_percentage,
    int? user_attempt_count,
    TopicUserShortResponse? user,
    String? created_at,
    String? round_image,
    bool? is_bookmarked,
    bool? is_following,
    Category? category,
  }) = _TopicQuestionResponse;

  factory TopicQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicQuestionResponseFromJson(json);

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
class TopicAnswerResponse with _$TopicAnswerResponse {
  const factory TopicAnswerResponse({
    int? id,
    String? letter,
    String? answer_text,
    bool? is_correct,
  }) = _TopicAnswerResponse;

  factory TopicAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicAnswerResponseFromJson(json);
}

@freezed
class TopicUserShortResponse with _$TopicUserShortResponse {
  const factory TopicUserShortResponse({
    int? id,
    String? username,
    String? profile_image,
    bool? is_badged,
    bool? is_premium,
    bool? is_following,
  }) = _TopicUserShortResponse;

  factory TopicUserShortResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicUserShortResponseFromJson(json);
}
