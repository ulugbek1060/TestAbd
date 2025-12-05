// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyInfoResponse _$MyInfoResponseFromJson(Map<String, dynamic> json) {
  return _MeResponse.fromJson(json);
}

/// @nodoc
mixin _$MyInfoResponse {
  int get id => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get settlement => throw _privateConstructorUsedError;
  List<String> get categoriesOfInterest => throw _privateConstructorUsedError;
  double get coinPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_test_count')
  WeeklyTestCount get weeklyTestCount => throw _privateConstructorUsedError;
  int get streakDay => throw _privateConstructorUsedError;
  int get testsSolved => throw _privateConstructorUsedError;
  int get correctCount => throw _privateConstructorUsedError;
  int get wrongCount => throw _privateConstructorUsedError;
  double get averageTime => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  bool get isSuperuser => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get isStaff => throw _privateConstructorUsedError;
  String? get dateJoined => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  bool get isBadged => throw _privateConstructorUsedError;
  String? get joinDate => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  int get liveQuizScore => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  String? get telegramId => throw _privateConstructorUsedError;
  String? get invitedBy => throw _privateConstructorUsedError;
  List<String> get groups => throw _privateConstructorUsedError;
  List<String> get userPermissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInfoResponseCopyWith<MyInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInfoResponseCopyWith<$Res> {
  factory $MyInfoResponseCopyWith(
          MyInfoResponse value, $Res Function(MyInfoResponse) then) =
      _$MyInfoResponseCopyWithImpl<$Res, MyInfoResponse>;
  @useResult
  $Res call(
      {int id,
      String? country,
      String? region,
      String? district,
      String? settlement,
      List<String> categoriesOfInterest,
      double coinPercentage,
      @JsonKey(name: 'weekly_test_count') WeeklyTestCount weeklyTestCount,
      int streakDay,
      int testsSolved,
      int correctCount,
      int wrongCount,
      double averageTime,
      String? lastLogin,
      bool isSuperuser,
      String username,
      String? firstName,
      String? lastName,
      String? email,
      bool isStaff,
      String? dateJoined,
      String? profileImage,
      String? bio,
      String? phoneNumber,
      String? createdAt,
      bool isActive,
      String role,
      bool isPremium,
      bool isBadged,
      String? joinDate,
      String level,
      int liveQuizScore,
      bool isEmailVerified,
      int coins,
      String? referralCode,
      String? telegramId,
      String? invitedBy,
      List<String> groups,
      List<String> userPermissions});

  $WeeklyTestCountCopyWith<$Res> get weeklyTestCount;
}

/// @nodoc
class _$MyInfoResponseCopyWithImpl<$Res, $Val extends MyInfoResponse>
    implements $MyInfoResponseCopyWith<$Res> {
  _$MyInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = freezed,
    Object? region = freezed,
    Object? district = freezed,
    Object? settlement = freezed,
    Object? categoriesOfInterest = null,
    Object? coinPercentage = null,
    Object? weeklyTestCount = null,
    Object? streakDay = null,
    Object? testsSolved = null,
    Object? correctCount = null,
    Object? wrongCount = null,
    Object? averageTime = null,
    Object? lastLogin = freezed,
    Object? isSuperuser = null,
    Object? username = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? isStaff = null,
    Object? dateJoined = freezed,
    Object? profileImage = freezed,
    Object? bio = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = freezed,
    Object? isActive = null,
    Object? role = null,
    Object? isPremium = null,
    Object? isBadged = null,
    Object? joinDate = freezed,
    Object? level = null,
    Object? liveQuizScore = null,
    Object? isEmailVerified = null,
    Object? coins = null,
    Object? referralCode = freezed,
    Object? telegramId = freezed,
    Object? invitedBy = freezed,
    Object? groups = null,
    Object? userPermissions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      settlement: freezed == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as String?,
      categoriesOfInterest: null == categoriesOfInterest
          ? _value.categoriesOfInterest
          : categoriesOfInterest // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coinPercentage: null == coinPercentage
          ? _value.coinPercentage
          : coinPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyTestCount: null == weeklyTestCount
          ? _value.weeklyTestCount
          : weeklyTestCount // ignore: cast_nullable_to_non_nullable
              as WeeklyTestCount,
      streakDay: null == streakDay
          ? _value.streakDay
          : streakDay // ignore: cast_nullable_to_non_nullable
              as int,
      testsSolved: null == testsSolved
          ? _value.testsSolved
          : testsSolved // ignore: cast_nullable_to_non_nullable
              as int,
      correctCount: null == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
      wrongCount: null == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageTime: null == averageTime
          ? _value.averageTime
          : averageTime // ignore: cast_nullable_to_non_nullable
              as double,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuperuser: null == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: null == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isBadged: null == isBadged
          ? _value.isBadged
          : isBadged // ignore: cast_nullable_to_non_nullable
              as bool,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      liveQuizScore: null == liveQuizScore
          ? _value.liveQuizScore
          : liveQuizScore // ignore: cast_nullable_to_non_nullable
              as int,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramId: freezed == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userPermissions: null == userPermissions
          ? _value.userPermissions
          : userPermissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeeklyTestCountCopyWith<$Res> get weeklyTestCount {
    return $WeeklyTestCountCopyWith<$Res>(_value.weeklyTestCount, (value) {
      return _then(_value.copyWith(weeklyTestCount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeResponseImplCopyWith<$Res>
    implements $MyInfoResponseCopyWith<$Res> {
  factory _$$MeResponseImplCopyWith(
          _$MeResponseImpl value, $Res Function(_$MeResponseImpl) then) =
      __$$MeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? country,
      String? region,
      String? district,
      String? settlement,
      List<String> categoriesOfInterest,
      double coinPercentage,
      @JsonKey(name: 'weekly_test_count') WeeklyTestCount weeklyTestCount,
      int streakDay,
      int testsSolved,
      int correctCount,
      int wrongCount,
      double averageTime,
      String? lastLogin,
      bool isSuperuser,
      String username,
      String? firstName,
      String? lastName,
      String? email,
      bool isStaff,
      String? dateJoined,
      String? profileImage,
      String? bio,
      String? phoneNumber,
      String? createdAt,
      bool isActive,
      String role,
      bool isPremium,
      bool isBadged,
      String? joinDate,
      String level,
      int liveQuizScore,
      bool isEmailVerified,
      int coins,
      String? referralCode,
      String? telegramId,
      String? invitedBy,
      List<String> groups,
      List<String> userPermissions});

  @override
  $WeeklyTestCountCopyWith<$Res> get weeklyTestCount;
}

/// @nodoc
class __$$MeResponseImplCopyWithImpl<$Res>
    extends _$MyInfoResponseCopyWithImpl<$Res, _$MeResponseImpl>
    implements _$$MeResponseImplCopyWith<$Res> {
  __$$MeResponseImplCopyWithImpl(
      _$MeResponseImpl _value, $Res Function(_$MeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = freezed,
    Object? region = freezed,
    Object? district = freezed,
    Object? settlement = freezed,
    Object? categoriesOfInterest = null,
    Object? coinPercentage = null,
    Object? weeklyTestCount = null,
    Object? streakDay = null,
    Object? testsSolved = null,
    Object? correctCount = null,
    Object? wrongCount = null,
    Object? averageTime = null,
    Object? lastLogin = freezed,
    Object? isSuperuser = null,
    Object? username = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? isStaff = null,
    Object? dateJoined = freezed,
    Object? profileImage = freezed,
    Object? bio = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = freezed,
    Object? isActive = null,
    Object? role = null,
    Object? isPremium = null,
    Object? isBadged = null,
    Object? joinDate = freezed,
    Object? level = null,
    Object? liveQuizScore = null,
    Object? isEmailVerified = null,
    Object? coins = null,
    Object? referralCode = freezed,
    Object? telegramId = freezed,
    Object? invitedBy = freezed,
    Object? groups = null,
    Object? userPermissions = null,
  }) {
    return _then(_$MeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      settlement: freezed == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as String?,
      categoriesOfInterest: null == categoriesOfInterest
          ? _value._categoriesOfInterest
          : categoriesOfInterest // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coinPercentage: null == coinPercentage
          ? _value.coinPercentage
          : coinPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyTestCount: null == weeklyTestCount
          ? _value.weeklyTestCount
          : weeklyTestCount // ignore: cast_nullable_to_non_nullable
              as WeeklyTestCount,
      streakDay: null == streakDay
          ? _value.streakDay
          : streakDay // ignore: cast_nullable_to_non_nullable
              as int,
      testsSolved: null == testsSolved
          ? _value.testsSolved
          : testsSolved // ignore: cast_nullable_to_non_nullable
              as int,
      correctCount: null == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
      wrongCount: null == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageTime: null == averageTime
          ? _value.averageTime
          : averageTime // ignore: cast_nullable_to_non_nullable
              as double,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuperuser: null == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: null == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isBadged: null == isBadged
          ? _value.isBadged
          : isBadged // ignore: cast_nullable_to_non_nullable
              as bool,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      liveQuizScore: null == liveQuizScore
          ? _value.liveQuizScore
          : liveQuizScore // ignore: cast_nullable_to_non_nullable
              as int,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramId: freezed == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userPermissions: null == userPermissions
          ? _value._userPermissions
          : userPermissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeResponseImpl implements _MeResponse {
  const _$MeResponseImpl(
      {required this.id,
      this.country,
      this.region,
      this.district,
      this.settlement,
      final List<String> categoriesOfInterest = const [],
      required this.coinPercentage,
      @JsonKey(name: 'weekly_test_count') required this.weeklyTestCount,
      required this.streakDay,
      required this.testsSolved,
      required this.correctCount,
      required this.wrongCount,
      required this.averageTime,
      this.lastLogin,
      required this.isSuperuser,
      required this.username,
      this.firstName,
      this.lastName,
      this.email,
      required this.isStaff,
      this.dateJoined,
      this.profileImage,
      this.bio,
      this.phoneNumber,
      this.createdAt,
      required this.isActive,
      required this.role,
      required this.isPremium,
      required this.isBadged,
      this.joinDate,
      required this.level,
      required this.liveQuizScore,
      required this.isEmailVerified,
      required this.coins,
      this.referralCode,
      this.telegramId,
      this.invitedBy,
      final List<String> groups = const [],
      final List<String> userPermissions = const []})
      : _categoriesOfInterest = categoriesOfInterest,
        _groups = groups,
        _userPermissions = userPermissions;

  factory _$MeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? district;
  @override
  final String? settlement;
  final List<String> _categoriesOfInterest;
  @override
  @JsonKey()
  List<String> get categoriesOfInterest {
    if (_categoriesOfInterest is EqualUnmodifiableListView)
      return _categoriesOfInterest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesOfInterest);
  }

  @override
  final double coinPercentage;
  @override
  @JsonKey(name: 'weekly_test_count')
  final WeeklyTestCount weeklyTestCount;
  @override
  final int streakDay;
  @override
  final int testsSolved;
  @override
  final int correctCount;
  @override
  final int wrongCount;
  @override
  final double averageTime;
  @override
  final String? lastLogin;
  @override
  final bool isSuperuser;
  @override
  final String username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final bool isStaff;
  @override
  final String? dateJoined;
  @override
  final String? profileImage;
  @override
  final String? bio;
  @override
  final String? phoneNumber;
  @override
  final String? createdAt;
  @override
  final bool isActive;
  @override
  final String role;
  @override
  final bool isPremium;
  @override
  final bool isBadged;
  @override
  final String? joinDate;
  @override
  final String level;
  @override
  final int liveQuizScore;
  @override
  final bool isEmailVerified;
  @override
  final int coins;
  @override
  final String? referralCode;
  @override
  final String? telegramId;
  @override
  final String? invitedBy;
  final List<String> _groups;
  @override
  @JsonKey()
  List<String> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<String> _userPermissions;
  @override
  @JsonKey()
  List<String> get userPermissions {
    if (_userPermissions is EqualUnmodifiableListView) return _userPermissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPermissions);
  }

  @override
  String toString() {
    return 'MyInfoResponse(id: $id, country: $country, region: $region, district: $district, settlement: $settlement, categoriesOfInterest: $categoriesOfInterest, coinPercentage: $coinPercentage, weeklyTestCount: $weeklyTestCount, streakDay: $streakDay, testsSolved: $testsSolved, correctCount: $correctCount, wrongCount: $wrongCount, averageTime: $averageTime, lastLogin: $lastLogin, isSuperuser: $isSuperuser, username: $username, firstName: $firstName, lastName: $lastName, email: $email, isStaff: $isStaff, dateJoined: $dateJoined, profileImage: $profileImage, bio: $bio, phoneNumber: $phoneNumber, createdAt: $createdAt, isActive: $isActive, role: $role, isPremium: $isPremium, isBadged: $isBadged, joinDate: $joinDate, level: $level, liveQuizScore: $liveQuizScore, isEmailVerified: $isEmailVerified, coins: $coins, referralCode: $referralCode, telegramId: $telegramId, invitedBy: $invitedBy, groups: $groups, userPermissions: $userPermissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.settlement, settlement) ||
                other.settlement == settlement) &&
            const DeepCollectionEquality()
                .equals(other._categoriesOfInterest, _categoriesOfInterest) &&
            (identical(other.coinPercentage, coinPercentage) ||
                other.coinPercentage == coinPercentage) &&
            (identical(other.weeklyTestCount, weeklyTestCount) ||
                other.weeklyTestCount == weeklyTestCount) &&
            (identical(other.streakDay, streakDay) ||
                other.streakDay == streakDay) &&
            (identical(other.testsSolved, testsSolved) ||
                other.testsSolved == testsSolved) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount) &&
            (identical(other.wrongCount, wrongCount) ||
                other.wrongCount == wrongCount) &&
            (identical(other.averageTime, averageTime) ||
                other.averageTime == averageTime) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.isSuperuser, isSuperuser) ||
                other.isSuperuser == isSuperuser) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isBadged, isBadged) ||
                other.isBadged == isBadged) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.liveQuizScore, liveQuizScore) ||
                other.liveQuizScore == liveQuizScore) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.telegramId, telegramId) ||
                other.telegramId == telegramId) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._userPermissions, _userPermissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        country,
        region,
        district,
        settlement,
        const DeepCollectionEquality().hash(_categoriesOfInterest),
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
        const DeepCollectionEquality().hash(_groups),
        const DeepCollectionEquality().hash(_userPermissions)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeResponseImplCopyWith<_$MeResponseImpl> get copyWith =>
      __$$MeResponseImplCopyWithImpl<_$MeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeResponseImplToJson(
      this,
    );
  }
}

abstract class _MeResponse implements MyInfoResponse {
  const factory _MeResponse(
      {required final int id,
      final String? country,
      final String? region,
      final String? district,
      final String? settlement,
      final List<String> categoriesOfInterest,
      required final double coinPercentage,
      @JsonKey(name: 'weekly_test_count')
      required final WeeklyTestCount weeklyTestCount,
      required final int streakDay,
      required final int testsSolved,
      required final int correctCount,
      required final int wrongCount,
      required final double averageTime,
      final String? lastLogin,
      required final bool isSuperuser,
      required final String username,
      final String? firstName,
      final String? lastName,
      final String? email,
      required final bool isStaff,
      final String? dateJoined,
      final String? profileImage,
      final String? bio,
      final String? phoneNumber,
      final String? createdAt,
      required final bool isActive,
      required final String role,
      required final bool isPremium,
      required final bool isBadged,
      final String? joinDate,
      required final String level,
      required final int liveQuizScore,
      required final bool isEmailVerified,
      required final int coins,
      final String? referralCode,
      final String? telegramId,
      final String? invitedBy,
      final List<String> groups,
      final List<String> userPermissions}) = _$MeResponseImpl;

  factory _MeResponse.fromJson(Map<String, dynamic> json) =
      _$MeResponseImpl.fromJson;

  @override
  int get id;
  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get district;
  @override
  String? get settlement;
  @override
  List<String> get categoriesOfInterest;
  @override
  double get coinPercentage;
  @override
  @JsonKey(name: 'weekly_test_count')
  WeeklyTestCount get weeklyTestCount;
  @override
  int get streakDay;
  @override
  int get testsSolved;
  @override
  int get correctCount;
  @override
  int get wrongCount;
  @override
  double get averageTime;
  @override
  String? get lastLogin;
  @override
  bool get isSuperuser;
  @override
  String get username;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  bool get isStaff;
  @override
  String? get dateJoined;
  @override
  String? get profileImage;
  @override
  String? get bio;
  @override
  String? get phoneNumber;
  @override
  String? get createdAt;
  @override
  bool get isActive;
  @override
  String get role;
  @override
  bool get isPremium;
  @override
  bool get isBadged;
  @override
  String? get joinDate;
  @override
  String get level;
  @override
  int get liveQuizScore;
  @override
  bool get isEmailVerified;
  @override
  int get coins;
  @override
  String? get referralCode;
  @override
  String? get telegramId;
  @override
  String? get invitedBy;
  @override
  List<String> get groups;
  @override
  List<String> get userPermissions;
  @override
  @JsonKey(ignore: true)
  _$$MeResponseImplCopyWith<_$MeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyTestCount _$WeeklyTestCountFromJson(Map<String, dynamic> json) {
  return _WeeklyTestCount.fromJson(json);
}

/// @nodoc
mixin _$WeeklyTestCount {
  @JsonKey(name: 'Dush')
  int get monday => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sesh')
  int get tuesday => throw _privateConstructorUsedError;
  @JsonKey(name: 'Chor')
  int get wednesday => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pay')
  int get thursday => throw _privateConstructorUsedError;
  @JsonKey(name: 'Jum')
  int get friday => throw _privateConstructorUsedError;
  @JsonKey(name: 'Shan')
  int get saturday => throw _privateConstructorUsedError;
  @JsonKey(name: 'Yak')
  int get sunday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyTestCountCopyWith<WeeklyTestCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyTestCountCopyWith<$Res> {
  factory $WeeklyTestCountCopyWith(
          WeeklyTestCount value, $Res Function(WeeklyTestCount) then) =
      _$WeeklyTestCountCopyWithImpl<$Res, WeeklyTestCount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Dush') int monday,
      @JsonKey(name: 'Sesh') int tuesday,
      @JsonKey(name: 'Chor') int wednesday,
      @JsonKey(name: 'Pay') int thursday,
      @JsonKey(name: 'Jum') int friday,
      @JsonKey(name: 'Shan') int saturday,
      @JsonKey(name: 'Yak') int sunday});
}

/// @nodoc
class _$WeeklyTestCountCopyWithImpl<$Res, $Val extends WeeklyTestCount>
    implements $WeeklyTestCountCopyWith<$Res> {
  _$WeeklyTestCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_value.copyWith(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as int,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as int,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as int,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as int,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as int,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as int,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyTestCountImplCopyWith<$Res>
    implements $WeeklyTestCountCopyWith<$Res> {
  factory _$$WeeklyTestCountImplCopyWith(_$WeeklyTestCountImpl value,
          $Res Function(_$WeeklyTestCountImpl) then) =
      __$$WeeklyTestCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Dush') int monday,
      @JsonKey(name: 'Sesh') int tuesday,
      @JsonKey(name: 'Chor') int wednesday,
      @JsonKey(name: 'Pay') int thursday,
      @JsonKey(name: 'Jum') int friday,
      @JsonKey(name: 'Shan') int saturday,
      @JsonKey(name: 'Yak') int sunday});
}

/// @nodoc
class __$$WeeklyTestCountImplCopyWithImpl<$Res>
    extends _$WeeklyTestCountCopyWithImpl<$Res, _$WeeklyTestCountImpl>
    implements _$$WeeklyTestCountImplCopyWith<$Res> {
  __$$WeeklyTestCountImplCopyWithImpl(
      _$WeeklyTestCountImpl _value, $Res Function(_$WeeklyTestCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_$WeeklyTestCountImpl(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as int,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as int,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as int,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as int,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as int,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as int,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyTestCountImpl implements _WeeklyTestCount {
  const _$WeeklyTestCountImpl(
      {@JsonKey(name: 'Dush') required this.monday,
      @JsonKey(name: 'Sesh') required this.tuesday,
      @JsonKey(name: 'Chor') required this.wednesday,
      @JsonKey(name: 'Pay') required this.thursday,
      @JsonKey(name: 'Jum') required this.friday,
      @JsonKey(name: 'Shan') required this.saturday,
      @JsonKey(name: 'Yak') required this.sunday});

  factory _$WeeklyTestCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyTestCountImplFromJson(json);

  @override
  @JsonKey(name: 'Dush')
  final int monday;
  @override
  @JsonKey(name: 'Sesh')
  final int tuesday;
  @override
  @JsonKey(name: 'Chor')
  final int wednesday;
  @override
  @JsonKey(name: 'Pay')
  final int thursday;
  @override
  @JsonKey(name: 'Jum')
  final int friday;
  @override
  @JsonKey(name: 'Shan')
  final int saturday;
  @override
  @JsonKey(name: 'Yak')
  final int sunday;

  @override
  String toString() {
    return 'WeeklyTestCount(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyTestCountImpl &&
            (identical(other.monday, monday) || other.monday == monday) &&
            (identical(other.tuesday, tuesday) || other.tuesday == tuesday) &&
            (identical(other.wednesday, wednesday) ||
                other.wednesday == wednesday) &&
            (identical(other.thursday, thursday) ||
                other.thursday == thursday) &&
            (identical(other.friday, friday) || other.friday == friday) &&
            (identical(other.saturday, saturday) ||
                other.saturday == saturday) &&
            (identical(other.sunday, sunday) || other.sunday == sunday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, monday, tuesday, wednesday,
      thursday, friday, saturday, sunday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyTestCountImplCopyWith<_$WeeklyTestCountImpl> get copyWith =>
      __$$WeeklyTestCountImplCopyWithImpl<_$WeeklyTestCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyTestCountImplToJson(
      this,
    );
  }
}

abstract class _WeeklyTestCount implements WeeklyTestCount {
  const factory _WeeklyTestCount(
      {@JsonKey(name: 'Dush') required final int monday,
      @JsonKey(name: 'Sesh') required final int tuesday,
      @JsonKey(name: 'Chor') required final int wednesday,
      @JsonKey(name: 'Pay') required final int thursday,
      @JsonKey(name: 'Jum') required final int friday,
      @JsonKey(name: 'Shan') required final int saturday,
      @JsonKey(name: 'Yak') required final int sunday}) = _$WeeklyTestCountImpl;

  factory _WeeklyTestCount.fromJson(Map<String, dynamic> json) =
      _$WeeklyTestCountImpl.fromJson;

  @override
  @JsonKey(name: 'Dush')
  int get monday;
  @override
  @JsonKey(name: 'Sesh')
  int get tuesday;
  @override
  @JsonKey(name: 'Chor')
  int get wednesday;
  @override
  @JsonKey(name: 'Pay')
  int get thursday;
  @override
  @JsonKey(name: 'Jum')
  int get friday;
  @override
  @JsonKey(name: 'Shan')
  int get saturday;
  @override
  @JsonKey(name: 'Yak')
  int get sunday;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyTestCountImplCopyWith<_$WeeklyTestCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
