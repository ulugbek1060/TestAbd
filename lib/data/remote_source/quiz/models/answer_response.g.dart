// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerResponseImpl _$$AnswerResponseImplFromJson(Map<String, dynamic> json) =>
    _$AnswerResponseImpl(
      id: (json['id'] as num).toInt(),
      questionId: (json['question'] as num?)?.toInt(),
      writtenAnswer: json['written_answer'] as String?,
      isCorrect: json['is_correct'] as bool?,
      duration: (json['duration'] as num?)?.toInt(),
      feedback: json['feedback'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$AnswerResponseImplToJson(
        _$AnswerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.questionId,
      'written_answer': instance.writtenAnswer,
      'is_correct': instance.isCorrect,
      'duration': instance.duration,
      'feedback': instance.feedback,
      'created_at': instance.createdAt,
    };
