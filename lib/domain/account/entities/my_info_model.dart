import 'package:equatable/equatable.dart';
import 'package:testabd/data/local_source/entities/my_info_db.dart';
import 'package:testabd/data/remote_source/account/model/my_info_response.dart';
import 'package:testabd/domain/entity/weekly_test_count_model.dart';

class MyInfoModel extends Equatable {
  final int? id;
  final String? country;
  final String? region;
  final String? district;
  final String? settlement;
  final List<String>? categoriesOfInterest;
  final double? coinPercentage;
  final WeeklyTestCountModel? weeklyTestCount;
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
  final List<String>? groups;
  final List<String>? userPermissions;

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

  static MyInfoModel fromResponse(MyInfoResponse? response) {
    return MyInfoModel(
      id: response?.id,
      country: response?.country,
      region: response?.region,
      district: response?.district,
      settlement: response?.settlement,
      categoriesOfInterest: response?.categoriesOfInterest,
      coinPercentage: response?.coinPercentage,
      weeklyTestCount: WeeklyTestCountModel(
        dush: response?.weeklyTestCount?.monday,
        sesh: response?.weeklyTestCount?.tuesday,
        chor: response?.weeklyTestCount?.wednesday,
        pay: response?.weeklyTestCount?.thursday,
        jum: response?.weeklyTestCount?.friday,
        shan: response?.weeklyTestCount?.saturday,
        yak: response?.weeklyTestCount?.sunday,
      ),
      streakDay: response?.streakDay,
      testsSolved: response?.testsSolved,
      correctCount: response?.correctCount,
      wrongCount: response?.wrongCount,
      averageTime: response?.averageTime,
      lastLogin: DateTime.tryParse(response?.lastLogin ?? ''),
      isSuperuser: response?.isSuperuser,
      username: response?.username,
      firstName: response?.firstName,
      lastName: response?.lastName,
      email: response?.email,
      isStaff: response?.isStaff,
      dateJoined: DateTime.tryParse(response?.dateJoined ?? ''),
      profileImage: response?.profileImage,
      bio: response?.bio,
      phoneNumber: response?.phoneNumber,
      createdAt: DateTime.tryParse(response?.createdAt ?? ''),
      isActive: response?.isActive,
      role: response?.role,
      isPremium: response?.isPremium,
      isBadged: response?.isBadged,
      joinDate: DateTime.tryParse(response?.joinDate ?? ''),
      level: response?.level,
      liveQuizScore: response?.liveQuizScore,
      isEmailVerified: response?.isEmailVerified,
      coins: response?.coins,
      referralCode: response?.referralCode,
      telegramId: response?.telegramId,
      invitedBy: response?.invitedBy,
      groups: response?.groups,
      userPermissions: response?.userPermissions,
    );
  }

  static MyInfoModel fromDb(MyInfoDb? dbModel) {
    return MyInfoModel(
      id: dbModel?.id,
      country: dbModel?.country,
      region: dbModel?.region,
      district: dbModel?.district,
      settlement: dbModel?.settlement,
      categoriesOfInterest: dbModel?.categoriesOfInterest,
      coinPercentage: dbModel?.coinPercentage,
      weeklyTestCount: WeeklyTestCountModel(
        dush: dbModel?.weeklyTestCount?.dush,
        sesh: dbModel?.weeklyTestCount?.sesh,
        chor: dbModel?.weeklyTestCount?.chor,
        pay: dbModel?.weeklyTestCount?.pay,
        jum: dbModel?.weeklyTestCount?.jum,
        shan: dbModel?.weeklyTestCount?.shan,
        yak: dbModel?.weeklyTestCount?.yak,
      ),
      streakDay: dbModel?.streakDay,
      testsSolved: dbModel?.testsSolved,
      correctCount: dbModel?.correctCount,
      wrongCount: dbModel?.wrongCount,
      averageTime: dbModel?.averageTime,
      lastLogin: dbModel?.lastLogin,
      isSuperuser: dbModel?.isSuperuser,
      username: dbModel?.username,
      firstName: dbModel?.firstName,
      lastName: dbModel?.lastName,
      email: dbModel?.email,
      isStaff: dbModel?.isStaff,
      dateJoined: dbModel?.dateJoined,
      profileImage: dbModel?.profileImage,
      bio: dbModel?.bio,
      phoneNumber: dbModel?.phoneNumber,
      createdAt: dbModel?.createdAt,
      isActive: dbModel?.isActive,
      role: dbModel?.role,
      isPremium: dbModel?.isPremium,
      isBadged: dbModel?.isBadged,
      joinDate: dbModel?.joinDate,
      level: dbModel?.level,
      liveQuizScore: dbModel?.liveQuizScore,
      isEmailVerified: dbModel?.isEmailVerified,
      coins: dbModel?.coins,
      referralCode: dbModel?.referralCode,
      telegramId: dbModel?.telegramId,
      invitedBy: dbModel?.invitedBy,
      groups: dbModel?.groups,
      userPermissions: dbModel?.userPermissions,
    );
  }

  static MyInfoDb toDb(MyInfoModel? model) {
    return MyInfoDb(
      id: model?.id,
      country: model?.country,
      region: model?.region,
      district: model?.district,
      settlement: model?.settlement,
      categoriesOfInterest: model?.categoriesOfInterest,
      coinPercentage: model?.coinPercentage,
      weeklyTestCount: WeeklyTestCountDb(
        dush: model?.weeklyTestCount?.dush,
        sesh: model?.weeklyTestCount?.sesh,
        chor: model?.weeklyTestCount?.chor,
        pay: model?.weeklyTestCount?.pay,
        jum: model?.weeklyTestCount?.jum,
        shan: model?.weeklyTestCount?.shan,
        yak: model?.weeklyTestCount?.yak,
      ),
      streakDay: model?.streakDay,
      testsSolved: model?.testsSolved,
      correctCount: model?.correctCount,
      wrongCount: model?.wrongCount,
      averageTime: model?.averageTime,
      lastLogin: model?.lastLogin,
      isSuperuser: model?.isSuperuser,
      username: model?.username,
      firstName: model?.firstName,
      lastName: model?.lastName,
      email: model?.email,
      isStaff: model?.isStaff,
      dateJoined: model?.dateJoined,
      profileImage: model?.profileImage,
      bio: model?.bio,
      phoneNumber: model?.phoneNumber,
      createdAt: model?.createdAt,
      isActive: model?.isActive,
      role: model?.role,
      isPremium: model?.isPremium,
      isBadged: model?.isBadged,
      joinDate: model?.joinDate,
      level: model?.level,
      liveQuizScore: model?.liveQuizScore,
      isEmailVerified: model?.isEmailVerified,
      coins: model?.coins,
      referralCode: model?.referralCode,
      telegramId: model?.telegramId,
      invitedBy: model?.invitedBy,
      groups: model?.groups,
      userPermissions: model?.userPermissions,
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
