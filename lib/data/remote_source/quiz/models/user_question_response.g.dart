// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserQuestionResponseImpl _$$UserQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserQuestionResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      test: (json['test'] as num?)?.toInt(),
      test_title: json['test_title'] as String?,
      question_text: json['question_text'] as String?,
      question_type: json['question_type'] as String?,
      order_index: (json['order_index'] as num?)?.toInt(),
      media: json['media'] as String?,
      answers: (json['answers'] as List<dynamic>?)
              ?.map(
                  (e) => UserAnswerResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      test_description: json['test_description'] as String?,
      correct_answer_text: json['correct_answer_text'] as String?,
      answer_language: json['answer_language'] as String?,
      correct_count: (json['correct_count'] as num?)?.toInt(),
      wrong_count: (json['wrong_count'] as num?)?.toInt(),
      difficulty_percentage:
          (json['difficulty_percentage'] as num?)?.toDouble(),
      user_attempt_count: (json['user_attempt_count'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserShortResponse.fromJson(json['user'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      round_image: json['round_image'] as String?,
      is_bookmarked: json['is_bookmarked'] as bool?,
      is_following: json['is_following'] as bool?,
      category: (json['category'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserQuestionResponseImplToJson(
        _$UserQuestionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test': instance.test,
      'test_title': instance.test_title,
      'question_text': instance.question_text,
      'question_type': instance.question_type,
      'order_index': instance.order_index,
      'media': instance.media,
      'answers': instance.answers,
      'test_description': instance.test_description,
      'correct_answer_text': instance.correct_answer_text,
      'answer_language': instance.answer_language,
      'correct_count': instance.correct_count,
      'wrong_count': instance.wrong_count,
      'difficulty_percentage': instance.difficulty_percentage,
      'user_attempt_count': instance.user_attempt_count,
      'user': instance.user,
      'created_at': instance.created_at,
      'round_image': instance.round_image,
      'is_bookmarked': instance.is_bookmarked,
      'is_following': instance.is_following,
      'category': instance.category,
    };

_$UserAnswerResponseImpl _$$UserAnswerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAnswerResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      letter: json['letter'] as String?,
      answer_text: json['answer_text'] as String?,
      is_correct: json['is_correct'] as bool?,
    );

Map<String, dynamic> _$$UserAnswerResponseImplToJson(
        _$UserAnswerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'letter': instance.letter,
      'answer_text': instance.answer_text,
      'is_correct': instance.is_correct,
    };

_$UserShortResponseImpl _$$UserShortResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserShortResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      profile_image: json['profile_image'] as String?,
      is_badged: json['is_badged'] as bool?,
      is_premium: json['is_premium'] as bool?,
      is_following: json['is_following'] as bool?,
    );

Map<String, dynamic> _$$UserShortResponseImplToJson(
        _$UserShortResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_image': instance.profile_image,
      'is_badged': instance.is_badged,
      'is_premium': instance.is_premium,
      'is_following': instance.is_following,
    };
