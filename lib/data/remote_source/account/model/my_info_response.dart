import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info_response.freezed.dart';

part 'my_info_response.g.dart';

@freezed
class MyInfoResponse with _$MyInfoResponse {
  const factory MyInfoResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'region') String? region,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'settlement') String? settlement,
    @JsonKey(name: 'categories_of_interest')
    @Default([]) List<String> categoriesOfInterest,
    @JsonKey(name: 'coin_percentage') double? coinPercentage,
    @JsonKey(name: 'weekly_test_count')
    WeeklyTestCount? weeklyTestCount,
    @JsonKey(name: 'streak_day') int? streakDay,
    @JsonKey(name: 'tests_solved') int? testsSolved,
    @JsonKey(name: 'correct_count') int? correctCount,
    @JsonKey(name: 'wrong_count') int? wrongCount,
    @JsonKey(name: 'average_time') double? averageTime,
    @JsonKey(name: 'last_login') String? lastLogin,
    @JsonKey(name: 'is_superuser') bool? isSuperuser,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'is_staff') bool? isStaff,
    @JsonKey(name: 'date_joined') String? dateJoined,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'is_badged') bool? isBadged,
    @JsonKey(name: 'join_date') String? joinDate,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'live_quiz_score') int? liveQuizScore,
    @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
    @JsonKey(name: 'coins') int? coins,
    @JsonKey(name: 'referral_code') String? referralCode,
    @JsonKey(name: 'telegram_id') String? telegramId,
    @JsonKey(name: 'invited_by') String? invitedBy,
    @JsonKey(name: 'groups') @Default([]) List<String> groups,
    @JsonKey(name: 'user_permissions')
    @Default([]) List<String> userPermissions,
  }) = _MeResponse;

  factory MyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MyInfoResponseFromJson(json);
}

@freezed
class WeeklyTestCount with _$WeeklyTestCount {
  const factory WeeklyTestCount({
    @JsonKey(name: 'Dush') int? monday,
    @JsonKey(name: 'Sesh') int? tuesday,
    @JsonKey(name: 'Chor') int? wednesday,
    @JsonKey(name: 'Pay') int? thursday,
    @JsonKey(name: 'Jum') int? friday,
    @JsonKey(name: 'Shan') int? saturday,
    @JsonKey(name: 'Yak') int? sunday,
  }) = _WeeklyTestCount;

  factory WeeklyTestCount.fromJson(Map<String, dynamic> json) =>
      _$WeeklyTestCountFromJson(json);
}
