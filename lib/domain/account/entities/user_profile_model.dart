
import 'package:equatable/equatable.dart';

class UserProfileModel extends Equatable {
  final UserModel? user;
  final UserStatsModel? stats;

  const UserProfileModel({
    this.user,
    this.stats,
  });

  @override
  List<Object?> get props => [user, stats];
}

class UserModel extends Equatable {
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final String? profileImage;
  final int? followersCount;
  final int? followingCount;
  final bool? isFollowing;
  final String? level;
  final DateTime? joinDate;
  final int? coins;

  const UserModel({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.bio,
    this.profileImage,
    this.followersCount,
    this.followingCount,
    this.isFollowing,
    this.level,
    this.joinDate,
    this.coins,
  });

  String get getFollowersCount {
    return followersCount?.toString() ?? '';
  }

  String get getFollowingCount {
    return followingCount?.toString() ?? '';
  }

  @override
  List<Object?> get props => [
    id,
    username,
    firstName,
    lastName,
    bio,
    profileImage,
    followersCount,
    followingCount,
    isFollowing,
    level,
    joinDate,
    coins,
  ];
}

class UserStatsModel extends Equatable {
  final int? totalTests;
  final int? correctAnswers;
  final int? wrongAnswers;
  final double? accuracy;

  const UserStatsModel({
    this.totalTests,
    this.correctAnswers,
    this.wrongAnswers,
    this.accuracy,
  });

  @override
  List<Object?> get props => [
    totalTests,
    correctAnswers,
    wrongAnswers,
    accuracy,
  ];
}
