// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      id: (json['id'] as num).toInt(),
      totalTests: json['total_tests'] as String,
      totalQuestions: json['total_questions'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      emoji: json['emoji'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
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
