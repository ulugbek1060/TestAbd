import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_response.freezed.dart';
part 'notifications_response.g.dart';

@freezed
class NotificationsResponse with _$NotificationsResponse {
  const factory NotificationsResponse({
    required int id,
    String? verb,
    String? message,
    String? actor,
    @JsonKey(name: 'content_type') String? contentType,
    @JsonKey(name: 'object_id') int? objectId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'is_read') bool? isRead,
  }) = _NotificationResponse;

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);
}
