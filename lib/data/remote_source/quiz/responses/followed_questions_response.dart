import 'package:freezed_annotation/freezed_annotation.dart';

part 'followed_questions_response.freezed.dart';
part 'followed_questions_response.g.dart';

@freezed
class FollowedQuestionsResponse with _$FollowedQuestionsResponse {
  const factory FollowedQuestionsResponse({
    int? count,
    String? next,
    String? previous,
    @Default([]) List<Question> results,
  }) = _FollowedQuestionsResponse;

  factory FollowedQuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowedQuestionsResponseFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    int? id,
    int? test,
    String? test_title,
    String? question_text,
    String? question_type,
    int? order_index,
    String? media,
    @Default([]) List<Answer> answers,
    String? test_description,
    String? correct_answer_text,
    String? answer_language,
    int? correct_count,
    int? wrong_count,
    double? difficulty_percentage,
    int? user_attempt_count,
    QuestionUser? user,
    DateTime? created_at,
    String? round_image,
    bool? is_bookmarked,
    bool? is_following,

    int? category,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    int? id,
    String? letter,
    String? answer_text,
    bool? is_correct,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) =>
      _$AnswerFromJson(json);
}

@freezed
class QuestionUser with _$QuestionUser {
  const factory QuestionUser({
    int? id,
    String? username,
    String? profile_image,
    bool? is_badged,
    bool? is_premium,
    bool? is_following,
  }) = _QuestionUser;

  factory QuestionUser.fromJson(Map<String, dynamic> json) =>
      _$QuestionUserFromJson(json);
}
