
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info_response.freezed.dart';
part 'my_info_response.g.dart';

@freezed
class MyInfoResponse with _$MyInfoResponse {
  const factory MyInfoResponse({
    required int id,
    String? country,
    String? region,
    String? district,
    String? settlement,
    @Default([]) List<String> categoriesOfInterest,
    required double coinPercentage,
    @JsonKey(name: 'weekly_test_count') required WeeklyTestCount weeklyTestCount,
    required int streakDay,
    required int testsSolved,
    required int correctCount,
    required int wrongCount,
    required double averageTime,
    String? lastLogin,
    required bool isSuperuser,
    required String username,
    String? firstName,
    String? lastName,
    String? email,
    required bool isStaff,
    String? dateJoined,
    String? profileImage,
    String? bio,
    String? phoneNumber,
    String? createdAt,
    required bool isActive,
    required String role,
    required bool isPremium,
    required bool isBadged,
    String? joinDate,
    required String level,
    required int liveQuizScore,
    required bool isEmailVerified,
    required int coins,
    String? referralCode,
    String? telegramId,
    String? invitedBy,
    @Default([]) List<String> groups,
    @Default([]) List<String> userPermissions,
  }) = _MeResponse;

  factory MyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MyInfoResponseFromJson(json);
}

@freezed
class WeeklyTestCount with _$WeeklyTestCount {
  const factory WeeklyTestCount({
    @JsonKey(name: 'Dush') required int monday,
    @JsonKey(name: 'Sesh') required int tuesday,
    @JsonKey(name: 'Chor') required int wednesday,
    @JsonKey(name: 'Pay') required int thursday,
    @JsonKey(name: 'Jum') required int friday,
    @JsonKey(name: 'Shan') required int saturday,
    @JsonKey(name: 'Yak') required int sunday,
  }) = _WeeklyTestCount;

  factory WeeklyTestCount.fromJson(Map<String, dynamic> json) =>
      _$WeeklyTestCountFromJson(json);
}
