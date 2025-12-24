// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followed_questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowedQuestionsResponseImpl _$$FollowedQuestionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowedQuestionsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FollowedQuestionsResponseImplToJson(
        _$FollowedQuestionsResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num?)?.toInt(),
      test: (json['test'] as num?)?.toInt(),
      test_title: json['test_title'] as String?,
      question_text: json['question_text'] as String?,
      question_type: json['question_type'] as String?,
      order_index: (json['order_index'] as num?)?.toInt(),
      media: json['media'] as String?,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
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
          : QuestionUser.fromJson(json['user'] as Map<String, dynamic>),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      round_image: json['round_image'] as String?,
      is_bookmarked: json['is_bookmarked'] as bool?,
      is_following: json['is_following'] as bool?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
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
      'created_at': instance.created_at?.toIso8601String(),
      'round_image': instance.round_image,
      'is_bookmarked': instance.is_bookmarked,
      'is_following': instance.is_following,
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      total_tests: (json['total_tests'] as num?)?.toInt(),
      total_questions: (json['total_questions'] as num?)?.toInt(),
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      emoji: json['emoji'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_tests': instance.total_tests,
      'total_questions': instance.total_questions,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'emoji': instance.emoji,
      'image': instance.image,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: (json['id'] as num?)?.toInt(),
      letter: json['letter'] as String?,
      answer_text: json['answer_text'] as String?,
      is_correct: json['is_correct'] as bool?,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'letter': instance.letter,
      'answer_text': instance.answer_text,
      'is_correct': instance.is_correct,
    };

_$QuestionUserImpl _$$QuestionUserImplFromJson(Map<String, dynamic> json) =>
    _$QuestionUserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      profile_image: json['profile_image'] as String?,
      is_badged: json['is_badged'] as bool?,
      is_premium: json['is_premium'] as bool?,
      is_following: json['is_following'] as bool?,
    );

Map<String, dynamic> _$$QuestionUserImplToJson(_$QuestionUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_image': instance.profile_image,
      'is_badged': instance.is_badged,
      'is_premium': instance.is_premium,
      'is_following': instance.is_following,
    };
