import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'my_info_db.g.dart';

@HiveType(typeId: 0)
class MyInfoDb extends HiveObject with EquatableMixin {
  @HiveField(0)
  final int? id;

  @HiveField(1)
  final String? country;

  @HiveField(2)
  final String? region;

  @HiveField(3)
  final String? district;

  @HiveField(4)
  final String? settlement;

  @HiveField(5)
  final List<String>? categoriesOfInterest; // Changed to List<String> (common for category IDs/names)

  @HiveField(6)
  final double? coinPercentage;

  @HiveField(7)
  final WeeklyTestCountDb? weeklyTestCount;

  @HiveField(8)
  final int? streakDay;

  @HiveField(9)
  final int? testsSolved;

  @HiveField(10)
  final int? correctCount;

  @HiveField(11)
  final int? wrongCount;

  @HiveField(12)
  final double? averageTime;

  @HiveField(13)
  final DateTime? lastLogin;

  @HiveField(14)
  final bool? isSuperuser;

  @HiveField(15)
  final String? username;

  @HiveField(16)
  final String? firstName;

  @HiveField(17)
  final String? lastName;

  @HiveField(18)
  final String? email;

  @HiveField(19)
  final bool? isStaff;

  @HiveField(20)
  final DateTime? dateJoined;

  @HiveField(21)
  final String? profileImage;

  @HiveField(22)
  final String? bio;

  @HiveField(23)
  final String? phoneNumber;

  @HiveField(24)
  final DateTime? createdAt;

  @HiveField(25)
  final bool? isActive;

  @HiveField(26)
  final String? role;

  @HiveField(27)
  final bool? isPremium;

  @HiveField(28)
  final bool? isBadged;

  @HiveField(29)
  final DateTime? joinDate;

  @HiveField(30)
  final String? level;

  @HiveField(31)
  final int? liveQuizScore;

  @HiveField(32)
  final bool? isEmailVerified;

  @HiveField(33)
  final int? coins;

  @HiveField(34)
  final String? referralCode;

  @HiveField(35)
  final String? telegramId;

  @HiveField(36)
  final dynamic invitedBy; // Remains dynamic (can be null, int, String, etc.)

  @HiveField(37)
  final List<String>? groups; // Assuming List<String> for group IDs/names

  @HiveField(38)
  final List<String>? userPermissions; // Assuming List<String> for permissions

  MyInfoDb({
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

@HiveType(typeId: 1)
class WeeklyTestCountDb extends HiveObject with EquatableMixin {
  @HiveField(0)
  final int? dush;

  @HiveField(1)
  final int? sesh;

  @HiveField(2)
  final int? chor;

  @HiveField(3)
  final int? pay;

  @HiveField(4)
  final int? jum;

  @HiveField(5)
  final int? shan;

  @HiveField(6)
  final int? yak;

  WeeklyTestCountDb({
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