import 'package:equatable/equatable.dart';

class QuizUser extends Equatable {
  final int? id;
  final String? username;
  final String? profileImage;
  final bool? isBadged;
  final bool? isPremium;
  final bool? isFollowing;

  const QuizUser({
    this.id,
    this.username,
    this.profileImage,
    this.isBadged,
    this.isPremium,
    this.isFollowing,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    profileImage,
    isBadged,
    isPremium,
    isFollowing,
  ];
}
