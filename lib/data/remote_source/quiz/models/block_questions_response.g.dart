// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockQuestionsResponseImpl _$$BlockQuestionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockQuestionsResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : BlockUserShortResponse.fromJson(
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
          ?.map(
              (e) => BlockQuestionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      is_bookmarked: json['is_bookmarked'] as bool?,
      participant_count: (json['participant_count'] as num?)?.toInt(),
      average_question_difficulty:
          (json['average_question_difficulty'] as num?)?.toDouble(),
      average_completion_time_minutes:
          (json['average_completion_time_minutes'] as num?)?.toDouble(),
      total_correct_attempts: (json['total_correct_attempts'] as num?)?.toInt(),
      total_wrong_attempts: (json['total_wrong_attempts'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BlockQuestionsResponseImplToJson(
        _$BlockQuestionsResponseImpl instance) =>
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
      'is_bookmarked': instance.is_bookmarked,
      'participant_count': instance.participant_count,
      'average_question_difficulty': instance.average_question_difficulty,
      'average_completion_time_minutes':
          instance.average_completion_time_minutes,
      'total_correct_attempts': instance.total_correct_attempts,
      'total_wrong_attempts': instance.total_wrong_attempts,
    };

_$BlockQuestionResponseImpl _$$BlockQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockQuestionResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      test: (json['test'] as num?)?.toInt(),
      test_title: json['test_title'] as String?,
      question_text: json['question_text'] as String?,
      question_type: json['question_type'] as String?,
      order_index: (json['order_index'] as num?)?.toInt(),
      media: json['media'] as String?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => BlockAnswerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
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
          : BlockUserShortResponse.fromJson(
              json['user'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      round_image: json['round_image'] as String?,
      is_bookmarked: json['is_bookmarked'] as bool?,
      is_following: json['is_following'] as bool?,
      category: (json['category'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BlockQuestionResponseImplToJson(
        _$BlockQuestionResponseImpl instance) =>
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

_$BlockAnswerResponseImpl _$$BlockAnswerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockAnswerResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      letter: json['letter'] as String?,
      answer_text: json['answer_text'] as String?,
      is_correct: json['is_correct'] as bool?,
    );

Map<String, dynamic> _$$BlockAnswerResponseImplToJson(
        _$BlockAnswerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'letter': instance.letter,
      'answer_text': instance.answer_text,
      'is_correct': instance.is_correct,
    };

_$BlockUserShortResponseImpl _$$BlockUserShortResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockUserShortResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      profile_image: json['profile_image'] as String?,
      is_badged: json['is_badged'] as bool?,
      is_premium: json['is_premium'] as bool?,
      is_following: json['is_following'] as bool?,
    );

Map<String, dynamic> _$$BlockUserShortResponseImplToJson(
        _$BlockUserShortResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_image': instance.profile_image,
      'is_badged': instance.is_badged,
      'is_premium': instance.is_premium,
      'is_following': instance.is_following,
    };
