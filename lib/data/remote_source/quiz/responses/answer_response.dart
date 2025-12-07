
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_response.freezed.dart';
part 'answer_response.g.dart';

@freezed
class AnswerResponse with _$AnswerResponse {
  const factory AnswerResponse({
    required int id,
    @JsonKey(name: 'question') int? questionId,
    @JsonKey(name: 'written_answer') String? writtenAnswer,
    @JsonKey(name: 'is_correct') bool? isCorrect,
    int? duration,
    String? feedback,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _AnswerResponse;

  factory AnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerResponseFromJson(json);
}
