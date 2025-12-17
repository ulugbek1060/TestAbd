import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_questions_response.freezed.dart';
part 'block_questions_response.g.dart';

@freezed
class BlockQuestionsResponse with _$BlockQuestionsResponse {
  const factory BlockQuestionsResponse({
    int? id,
    BlockUserShortResponse? user,
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
    List<BlockQuestionResponse>? questions,
    bool? is_bookmarked,
    int? participant_count,
    double? average_question_difficulty,
    double? average_completion_time_minutes,
    int? total_correct_attempts,
    int? total_wrong_attempts,
  }) = _BlockQuestionsResponse;

  factory BlockQuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockQuestionsResponseFromJson(json);
}

@freezed
class BlockQuestionResponse with _$BlockQuestionResponse {
  const factory BlockQuestionResponse({
    int? id,
    int? test,
    String? test_title,
    String? question_text,
    String? question_type,
    int? order_index,
    String? media,
    List<BlockAnswerResponse>? answers,
    String? test_description,
    String? correct_answer_text,
    String? answer_language,
    int? correct_count,
    int? wrong_count,
    double? difficulty_percentage,
    int? user_attempt_count,
    BlockUserShortResponse? user,
    String? created_at,
    String? round_image,
    bool? is_bookmarked,
    bool? is_following,
    int? category,
  }) = _BlockQuestionResponse;

  factory BlockQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockQuestionResponseFromJson(json);
}

@freezed
class BlockAnswerResponse with _$BlockAnswerResponse {
  const factory BlockAnswerResponse({
    int? id,
    String? letter,
    String? answer_text,
    bool? is_correct,
  }) = _BlockAnswerResponse;

  factory BlockAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockAnswerResponseFromJson(json);
}

@freezed
class BlockUserShortResponse with _$BlockUserShortResponse {
  const factory BlockUserShortResponse({
    int? id,
    String? username,
    String? profile_image,
    bool? is_badged,
    bool? is_premium,
    bool? is_following,
  }) = _BlockUserShortResponse;

  factory BlockUserShortResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockUserShortResponseFromJson(json);
}
