// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followed_quiz_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowedQuizResponseImpl _$$FollowedQuizResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowedQuizResponseImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => FollowedQuizItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FollowedQuizResponseImplToJson(
        _$FollowedQuizResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$FollowedQuizItemImpl _$$FollowedQuizItemImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowedQuizItemImpl(
      id: (json['id'] as num?)?.toInt(),
      test: (json['test'] as num?)?.toInt(),
      testTitle: json['testTitle'] as String?,
      questionText: json['questionText'] as String?,
      questionType: json['questionType'] as String?,
      orderIndex: (json['orderIndex'] as num?)?.toInt(),
      media: json['media'] as String?,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => AnswerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      testDescription: json['testDescription'] as String?,
      correctAnswerText: json['correctAnswerText'] as String?,
      answerLanguage: json['answerLanguage'] as String?,
      correctCount: json['correctCount'] as String?,
      wrongCount: json['wrongCount'] as String?,
      difficultyPercentage: (json['difficultyPercentage'] as num?)?.toDouble(),
      userAttemptCount: json['userAttemptCount'] as String?,
      user: json['user'] == null
          ? null
          : FollowUser.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      roundImage: json['roundImage'] as String?,
      isBookmarked: json['isBookmarked'] as String?,
      isFollowing: json['isFollowing'] as String?,
      category: (json['category'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FollowedQuizItemImplToJson(
        _$FollowedQuizItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test': instance.test,
      'testTitle': instance.testTitle,
      'questionText': instance.questionText,
      'questionType': instance.questionType,
      'orderIndex': instance.orderIndex,
      'media': instance.media,
      'answers': instance.answers,
      'testDescription': instance.testDescription,
      'correctAnswerText': instance.correctAnswerText,
      'answerLanguage': instance.answerLanguage,
      'correctCount': instance.correctCount,
      'wrongCount': instance.wrongCount,
      'difficultyPercentage': instance.difficultyPercentage,
      'userAttemptCount': instance.userAttemptCount,
      'user': instance.user,
      'createdAt': instance.createdAt?.toIso8601String(),
      'roundImage': instance.roundImage,
      'isBookmarked': instance.isBookmarked,
      'isFollowing': instance.isFollowing,
      'category': instance.category,
    };

_$AnswerModelImpl _$$AnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$AnswerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      letter: json['letter'] as String?,
      answerText: json['answerText'] as String?,
      isCorrect: json['isCorrect'] as bool?,
    );

Map<String, dynamic> _$$AnswerModelImplToJson(_$AnswerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'letter': instance.letter,
      'answerText': instance.answerText,
      'isCorrect': instance.isCorrect,
    };

_$FollowUserImpl _$$FollowUserImplFromJson(Map<String, dynamic> json) =>
    _$FollowUserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      profileImage: json['profileImage'] as String?,
      isBadged: json['isBadged'] as bool?,
      isPremium: json['isPremium'] as bool?,
      isFollowing: json['isFollowing'] as String?,
    );

Map<String, dynamic> _$$FollowUserImplToJson(_$FollowUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profileImage': instance.profileImage,
      'isBadged': instance.isBadged,
      'isPremium': instance.isPremium,
      'isFollowing': instance.isFollowing,
    };
