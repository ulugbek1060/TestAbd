// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_related_questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicRelatedQuestionsResponseImpl
    _$$TopicRelatedQuestionsResponseImplFromJson(Map<String, dynamic> json) =>
        _$TopicRelatedQuestionsResponseImpl(
          count: (json['count'] as num?)?.toInt(),
          next: json['next'] as String?,
          previous: json['previous'] as String?,
          results: (json['results'] as List<dynamic>?)
                  ?.map((e) => TopicQuestionItemResponse.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$TopicRelatedQuestionsResponseImplToJson(
        _$TopicRelatedQuestionsResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$TopicQuestionItemResponseImpl _$$TopicQuestionItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicQuestionItemResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : TopicUserShortResponse.fromJson(
              json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      visibility: json['visibility'] as String?,
      access_mode: json['access_mode'] as String?,
      participant_roles: json['participant_roles'] as String?,
      max_participants: (json['max_participants'] as num?)?.toInt(),
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String?,
      min_score_to_finish: (json['min_score_to_finish'] as num?)?.toInt(),
      participant_count_to_finish:
          (json['participant_count_to_finish'] as num?)?.toInt(),
      country: json['country'] as String?,
      region: json['region'] as String?,
      district: json['district'] as String?,
      is_region_premium: json['is_region_premium'] as bool?,
      created_at: json['created_at'] as String?,
      difficulty_percentage:
          (json['difficulty_percentage'] as num?)?.toDouble(),
      total_questions: (json['total_questions'] as num?)?.toInt(),
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) =>
                  TopicQuestionResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TopicQuestionItemResponseImplToJson(
        _$TopicQuestionItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'visibility': instance.visibility,
      'access_mode': instance.access_mode,
      'participant_roles': instance.participant_roles,
      'max_participants': instance.max_participants,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'min_score_to_finish': instance.min_score_to_finish,
      'participant_count_to_finish': instance.participant_count_to_finish,
      'country': instance.country,
      'region': instance.region,
      'district': instance.district,
      'is_region_premium': instance.is_region_premium,
      'created_at': instance.created_at,
      'difficulty_percentage': instance.difficulty_percentage,
      'total_questions': instance.total_questions,
      'questions': instance.questions,
    };

_$TopicQuestionResponseImpl _$$TopicQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicQuestionResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      test: (json['test'] as num?)?.toInt(),
      test_title: json['test_title'] as String?,
      question_text: json['question_text'] as String?,
      question_type: json['question_type'] as String?,
      order_index: (json['order_index'] as num?)?.toInt(),
      media: json['media'] as String?,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) =>
                  TopicAnswerResponse.fromJson(e as Map<String, dynamic>))
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
          : TopicUserShortResponse.fromJson(
              json['user'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      round_image: json['round_image'] as String?,
      is_bookmarked: json['is_bookmarked'] as bool?,
      is_following: json['is_following'] as bool?,
      category: (json['category'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopicQuestionResponseImplToJson(
        _$TopicQuestionResponseImpl instance) =>
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

_$TopicAnswerResponseImpl _$$TopicAnswerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicAnswerResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      letter: json['letter'] as String?,
      answer_text: json['answer_text'] as String?,
      is_correct: json['is_correct'] as bool?,
    );

Map<String, dynamic> _$$TopicAnswerResponseImplToJson(
        _$TopicAnswerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'letter': instance.letter,
      'answer_text': instance.answer_text,
      'is_correct': instance.is_correct,
    };

_$TopicUserShortResponseImpl _$$TopicUserShortResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicUserShortResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      profile_image: json['profile_image'] as String?,
      is_badged: json['is_badged'] as bool?,
      is_premium: json['is_premium'] as bool?,
      is_following: json['is_following'] as bool?,
    );

Map<String, dynamic> _$$TopicUserShortResponseImplToJson(
        _$TopicUserShortResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_image': instance.profile_image,
      'is_badged': instance.is_badged,
      'is_premium': instance.is_premium,
      'is_following': instance.is_following,
    };
