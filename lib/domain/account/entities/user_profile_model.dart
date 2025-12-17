import 'package:equatable/equatable.dart';
import 'package:testabd/core/utils/formatters.dart';

class UserProfileModel extends Equatable {
  final UserModel? user;
  final UserStatsModel? stats;

  const UserProfileModel({this.user, this.stats});

  UserProfileModel copyWith({UserModel? user, UserStatsModel? stats}) {
    return UserProfileModel(
      user: user ?? this.user,
      stats: stats ?? this.stats,
    );
  }

  UserProfileModel setFollowing(bool isFollowing) {
    return copyWith(user: user?.copyWith(isFollowing: isFollowing));
  }

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

  // get full name
  String get getFullName {
    // capitalize the first letter of each name
    return '${capitalize(firstName)} ${capitalize(lastName)}';
  }

  String get getFollowersCount {
    return followersCount?.toString() ?? '';
  }

  String get getFollowingCount {
    return followingCount?.toString() ?? '';
  }

  UserModel copyWith({
    int? id,
    String? username,
    String? firstName,
    String? lastName,
    String? bio,
    String? profileImage,
    int? followersCount,
    int? followingCount,
    bool? isFollowing,
    String? level,
    DateTime? joinDate,
    int? coins,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      bio: bio ?? this.bio,
      profileImage: profileImage ?? this.profileImage,
      followersCount: followersCount ?? this.followersCount,
      followingCount: followingCount ?? this.followingCount,
      isFollowing: isFollowing ?? this.isFollowing,
      level: level ?? this.level,
      joinDate: joinDate ?? this.joinDate,
      coins: coins ?? this.coins,
    );
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
