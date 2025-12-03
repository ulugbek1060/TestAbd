// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseImpl _$$NotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationResponseImpl(
      id: (json['id'] as num).toInt(),
      verb: json['verb'] as String?,
      message: json['message'] as String?,
      actor: json['actor'] as String?,
      contentType: json['content_type'] as String?,
      objectId: (json['object_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      isRead: json['is_read'] as bool?,
    );

Map<String, dynamic> _$$NotificationResponseImplToJson(
        _$NotificationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verb': instance.verb,
      'message': instance.message,
      'actor': instance.actor,
      'content_type': instance.contentType,
      'object_id': instance.objectId,
      'created_at': instance.createdAt,
      'is_read': instance.isRead,
    };
