import 'package:equatable/equatable.dart';

class MyInfoModel extends Equatable {
  final int? id;
  final String? country;
  final String? region;
  final String? district;
  final String? settlement;
  final List<dynamic>? categoriesOfInterest;
  final double? coinPercentage;
  final WeeklyTestCount? weeklyTestCount;
  final int? streakDay;
  final int? testsSolved;
  final int? correctCount;
  final int? wrongCount;
  final double? averageTime;
  final DateTime? lastLogin;
  final bool? isSuperuser;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final bool? isStaff;
  final DateTime? dateJoined;
  final String? profileImage;
  final String? bio;
  final String? phoneNumber;
  final DateTime? createdAt;
  final bool? isActive;
  final String? role;
  final bool? isPremium;
  final bool? isBadged;
  final DateTime? joinDate;
  final String? level;
  final int? liveQuizScore;
  final bool? isEmailVerified;
  final int? coins;
  final String? referralCode;
  final String? telegramId;
  final dynamic invitedBy;
  final List<dynamic>? groups;
  final List<dynamic>? userPermissions;

  const MyInfoModel({
    this.id,
    this.country,
    this.region,
    this.district,
    this.settlement,
    this.categoriesOfInterest,
    this.coinPercentage,
    this.weeklyTestCount,
    this.streakDay,
    this.testsSolved,
    this.correctCount,
    this.wrongCount,
    this.averageTime,
    this.lastLogin,
    this.isSuperuser,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.isStaff,
    this.dateJoined,
    this.profileImage,
    this.bio,
    this.phoneNumber,
    this.createdAt,
    this.isActive,
    this.role,
    this.isPremium,
    this.isBadged,
    this.joinDate,
    this.level,
    this.liveQuizScore,
    this.isEmailVerified,
    this.coins,
    this.referralCode,
    this.telegramId,
    this.invitedBy,
    this.groups,
    this.userPermissions,
  });

  double findAccuracy() {
    return double.parse(
      (((correctCount ?? 0) / (testsSolved ?? 1)) * 100).toStringAsFixed(2),
    );
  }

  @override
  List<Object?> get props => [
    id,
    country,
    region,
    district,
    settlement,
    categoriesOfInterest,
    coinPercentage,
    weeklyTestCount,
    streakDay,
    testsSolved,
    correctCount,
    wrongCount,
    averageTime,
    lastLogin,
    isSuperuser,
    username,
    firstName,
    lastName,
    email,
    isStaff,
    dateJoined,
    profileImage,
    bio,
    phoneNumber,
    createdAt,
    isActive,
    role,
    isPremium,
    isBadged,
    joinDate,
    level,
    liveQuizScore,
    isEmailVerified,
    coins,
    referralCode,
    telegramId,
    invitedBy,
    groups,
    userPermissions,
  ];
}

class WeeklyTestCount extends Equatable {
  final int? dush;
  final int? sesh;
  final int? chor;
  final int? pay;
  final int? jum;
  final int? shan;
  final int? yak;

  const WeeklyTestCount({
    this.dush,
    this.sesh,
    this.chor,
    this.pay,
    this.jum,
    this.shan,
    this.yak,
  });

  @override
  List<Object?> get props => [dush, sesh, chor, pay, jum, shan, yak];
}
