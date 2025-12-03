// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeResponseImpl _$$MeResponseImplFromJson(Map<String, dynamic> json) =>
    _$MeResponseImpl(
      id: (json['id'] as num).toInt(),
      country: json['country'] as String?,
      region: json['region'] as String?,
      district: json['district'] as String?,
      settlement: json['settlement'] as String?,
      categoriesOfInterest: (json['categoriesOfInterest'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      coinPercentage: (json['coinPercentage'] as num).toDouble(),
      weeklyTestCount: WeeklyTestCount.fromJson(
          json['weekly_test_count'] as Map<String, dynamic>),
      streakDay: (json['streakDay'] as num).toInt(),
      testsSolved: (json['testsSolved'] as num).toInt(),
      correctCount: (json['correctCount'] as num).toInt(),
      wrongCount: (json['wrongCount'] as num).toInt(),
      averageTime: (json['averageTime'] as num).toDouble(),
      lastLogin: json['lastLogin'] as String?,
      isSuperuser: json['isSuperuser'] as bool,
      username: json['username'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      isStaff: json['isStaff'] as bool,
      dateJoined: json['dateJoined'] as String?,
      profileImage: json['profileImage'] as String?,
      bio: json['bio'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      createdAt: json['createdAt'] as String?,
      isActive: json['isActive'] as bool,
      role: json['role'] as String,
      isPremium: json['isPremium'] as bool,
      isBadged: json['isBadged'] as bool,
      joinDate: json['joinDate'] as String?,
      level: json['level'] as String,
      liveQuizScore: (json['liveQuizScore'] as num).toInt(),
      isEmailVerified: json['isEmailVerified'] as bool,
      coins: (json['coins'] as num).toInt(),
      referralCode: json['referralCode'] as String?,
      telegramId: json['telegramId'] as String?,
      invitedBy: json['invitedBy'] as String?,
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      userPermissions: (json['userPermissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MeResponseImplToJson(_$MeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'region': instance.region,
      'district': instance.district,
      'settlement': instance.settlement,
      'categoriesOfInterest': instance.categoriesOfInterest,
      'coinPercentage': instance.coinPercentage,
      'weekly_test_count': instance.weeklyTestCount,
      'streakDay': instance.streakDay,
      'testsSolved': instance.testsSolved,
      'correctCount': instance.correctCount,
      'wrongCount': instance.wrongCount,
      'averageTime': instance.averageTime,
      'lastLogin': instance.lastLogin,
      'isSuperuser': instance.isSuperuser,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'isStaff': instance.isStaff,
      'dateJoined': instance.dateJoined,
      'profileImage': instance.profileImage,
      'bio': instance.bio,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt,
      'isActive': instance.isActive,
      'role': instance.role,
      'isPremium': instance.isPremium,
      'isBadged': instance.isBadged,
      'joinDate': instance.joinDate,
      'level': instance.level,
      'liveQuizScore': instance.liveQuizScore,
      'isEmailVerified': instance.isEmailVerified,
      'coins': instance.coins,
      'referralCode': instance.referralCode,
      'telegramId': instance.telegramId,
      'invitedBy': instance.invitedBy,
      'groups': instance.groups,
      'userPermissions': instance.userPermissions,
    };

_$WeeklyTestCountImpl _$$WeeklyTestCountImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyTestCountImpl(
      monday: (json['Dush'] as num).toInt(),
      tuesday: (json['Sesh'] as num).toInt(),
      wednesday: (json['Chor'] as num).toInt(),
      thursday: (json['Pay'] as num).toInt(),
      friday: (json['Jum'] as num).toInt(),
      saturday: (json['Shan'] as num).toInt(),
      sunday: (json['Yak'] as num).toInt(),
    );

Map<String, dynamic> _$$WeeklyTestCountImplToJson(
        _$WeeklyTestCountImpl instance) =>
    <String, dynamic>{
      'Dush': instance.monday,
      'Sesh': instance.tuesday,
      'Chor': instance.wednesday,
      'Pay': instance.thursday,
      'Jum': instance.friday,
      'Shan': instance.saturday,
      'Yak': instance.sunday,
    };
