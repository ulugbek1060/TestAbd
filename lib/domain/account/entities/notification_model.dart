import 'package:equatable/equatable.dart';

class NotificationModel extends Equatable {
  final int? id;
  final String? verb;
  final String? message;
  final String? actor;
  final String? contentType;
  final int? objectId;
  final DateTime? createdAt;
  final bool? isRead;

  const NotificationModel({
    this.id,
    this.verb,
    this.message,
    this.actor,
    this.contentType,
    this.objectId,
    this.createdAt,
    this.isRead,
  });

  @override
  List<Object?> get props => [
    id,
    verb,
    message,
    actor,
    contentType,
    objectId,
    createdAt,
    isRead,
  ];
}
