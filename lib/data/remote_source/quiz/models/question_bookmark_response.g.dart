// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_bookmark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionBookmarkResponseImpl _$$QuestionBookmarkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionBookmarkResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : BookmarkUserResponse.fromJson(json['user'] as Map<String, dynamic>),
      questionDetail: json['question_detail'] == null
          ? null
          : BookmarkQuestionDetailResponse.fromJson(
              json['question_detail'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$QuestionBookmarkResponseImplToJson(
        _$QuestionBookmarkResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'question_detail': instance.questionDetail,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$BookmarkUserResponseImpl _$$BookmarkUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookmarkUserResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      profileImage: json['profile_image'] as String?,
      isBadged: json['is_badged'] as bool?,
      isPremium: json['is_premium'] as bool?,
      isFollowing: json['is_following'] as bool?,
    );

Map<String, dynamic> _$$BookmarkUserResponseImplToJson(
        _$BookmarkUserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_image': instance.profileImage,
      'is_badged': instance.isBadged,
      'is_premium': instance.isPremium,
      'is_following': instance.isFollowing,
    };

_$BookmarkQuestionDetailResponseImpl
    _$$BookmarkQuestionDetailResponseImplFromJson(Map<String, dynamic> json) =>
        _$BookmarkQuestionDetailResponseImpl(
          id: (json['id'] as num?)?.toInt(),
          questionText: json['question_text'] as String?,
          questionType: json['question_type'] as String?,
          difficultyPercentage:
              (json['difficulty_percentage'] as num?)?.toDouble(),
          createdAt: json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
          testTitle: json['test_title'] as String?,
          category: json['category'] == null
              ? null
              : BookmarkCategoryResponse.fromJson(
                  json['category'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BookmarkQuestionDetailResponseImplToJson(
        _$BookmarkQuestionDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_text': instance.questionText,
      'question_type': instance.questionType,
      'difficulty_percentage': instance.difficultyPercentage,
      'created_at': instance.createdAt?.toIso8601String(),
      'test_title': instance.testTitle,
      'category': instance.category,
    };

_$BookmarkCategoryResponseImpl _$$BookmarkCategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookmarkCategoryResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      totalTests: (json['total_tests'] as num?)?.toInt(),
      totalQuestions: (json['total_questions'] as num?)?.toInt(),
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      emoji: json['emoji'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BookmarkCategoryResponseImplToJson(
        _$BookmarkCategoryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_tests': instance.totalTests,
      'total_questions': instance.totalQuestions,
      'title': instance.title,
      'slug': instance.slug,
      'description': instance.description,
      'emoji': instance.emoji,
      'image': instance.image,
    };
