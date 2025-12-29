// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bookmark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionBookmarkResponse _$QuestionBookmarkResponseFromJson(
    Map<String, dynamic> json) {
  return _QuestionBookmarkResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionBookmarkResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  BookmarkUserResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_detail')
  BookmarkQuestionDetailResponse? get questionDetail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionBookmarkResponseCopyWith<QuestionBookmarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionBookmarkResponseCopyWith<$Res> {
  factory $QuestionBookmarkResponseCopyWith(QuestionBookmarkResponse value,
          $Res Function(QuestionBookmarkResponse) then) =
      _$QuestionBookmarkResponseCopyWithImpl<$Res, QuestionBookmarkResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user') BookmarkUserResponse? user,
      @JsonKey(name: 'question_detail')
      BookmarkQuestionDetailResponse? questionDetail,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $BookmarkUserResponseCopyWith<$Res>? get user;
  $BookmarkQuestionDetailResponseCopyWith<$Res>? get questionDetail;
}

/// @nodoc
class _$QuestionBookmarkResponseCopyWithImpl<$Res,
        $Val extends QuestionBookmarkResponse>
    implements $QuestionBookmarkResponseCopyWith<$Res> {
  _$QuestionBookmarkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? questionDetail = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BookmarkUserResponse?,
      questionDetail: freezed == questionDetail
          ? _value.questionDetail
          : questionDetail // ignore: cast_nullable_to_non_nullable
              as BookmarkQuestionDetailResponse?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookmarkUserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $BookmarkUserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookmarkQuestionDetailResponseCopyWith<$Res>? get questionDetail {
    if (_value.questionDetail == null) {
      return null;
    }

    return $BookmarkQuestionDetailResponseCopyWith<$Res>(_value.questionDetail!,
        (value) {
      return _then(_value.copyWith(questionDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionBookmarkResponseImplCopyWith<$Res>
    implements $QuestionBookmarkResponseCopyWith<$Res> {
  factory _$$QuestionBookmarkResponseImplCopyWith(
          _$QuestionBookmarkResponseImpl value,
          $Res Function(_$QuestionBookmarkResponseImpl) then) =
      __$$QuestionBookmarkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'user') BookmarkUserResponse? user,
      @JsonKey(name: 'question_detail')
      BookmarkQuestionDetailResponse? questionDetail,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $BookmarkUserResponseCopyWith<$Res>? get user;
  @override
  $BookmarkQuestionDetailResponseCopyWith<$Res>? get questionDetail;
}

/// @nodoc
class __$$QuestionBookmarkResponseImplCopyWithImpl<$Res>
    extends _$QuestionBookmarkResponseCopyWithImpl<$Res,
        _$QuestionBookmarkResponseImpl>
    implements _$$QuestionBookmarkResponseImplCopyWith<$Res> {
  __$$QuestionBookmarkResponseImplCopyWithImpl(
      _$QuestionBookmarkResponseImpl _value,
      $Res Function(_$QuestionBookmarkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? questionDetail = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$QuestionBookmarkResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BookmarkUserResponse?,
      questionDetail: freezed == questionDetail
          ? _value.questionDetail
          : questionDetail // ignore: cast_nullable_to_non_nullable
              as BookmarkQuestionDetailResponse?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionBookmarkResponseImpl implements _QuestionBookmarkResponse {
  const _$QuestionBookmarkResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'question_detail') this.questionDetail,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$QuestionBookmarkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionBookmarkResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'user')
  final BookmarkUserResponse? user;
  @override
  @JsonKey(name: 'question_detail')
  final BookmarkQuestionDetailResponse? questionDetail;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'QuestionBookmarkResponse(id: $id, user: $user, questionDetail: $questionDetail, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionBookmarkResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.questionDetail, questionDetail) ||
                other.questionDetail == questionDetail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, questionDetail, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionBookmarkResponseImplCopyWith<_$QuestionBookmarkResponseImpl>
      get copyWith => __$$QuestionBookmarkResponseImplCopyWithImpl<
          _$QuestionBookmarkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionBookmarkResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestionBookmarkResponse implements QuestionBookmarkResponse {
  const factory _QuestionBookmarkResponse(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'user') final BookmarkUserResponse? user,
          @JsonKey(name: 'question_detail')
          final BookmarkQuestionDetailResponse? questionDetail,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$QuestionBookmarkResponseImpl;

  factory _QuestionBookmarkResponse.fromJson(Map<String, dynamic> json) =
      _$QuestionBookmarkResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'user')
  BookmarkUserResponse? get user;
  @override
  @JsonKey(name: 'question_detail')
  BookmarkQuestionDetailResponse? get questionDetail;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$QuestionBookmarkResponseImplCopyWith<_$QuestionBookmarkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookmarkUserResponse _$BookmarkUserResponseFromJson(Map<String, dynamic> json) {
  return _BookmarkUserResponse.fromJson(json);
}

/// @nodoc
mixin _$BookmarkUserResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_badged')
  bool? get isBadged => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_premium')
  bool? get isPremium => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_following')
  bool? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkUserResponseCopyWith<BookmarkUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkUserResponseCopyWith<$Res> {
  factory $BookmarkUserResponseCopyWith(BookmarkUserResponse value,
          $Res Function(BookmarkUserResponse) then) =
      _$BookmarkUserResponseCopyWithImpl<$Res, BookmarkUserResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'is_badged') bool? isBadged,
      @JsonKey(name: 'is_premium') bool? isPremium,
      @JsonKey(name: 'is_following') bool? isFollowing});
}

/// @nodoc
class _$BookmarkUserResponseCopyWithImpl<$Res,
        $Val extends BookmarkUserResponse>
    implements $BookmarkUserResponseCopyWith<$Res> {
  _$BookmarkUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? isBadged = freezed,
    Object? isPremium = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBadged: freezed == isBadged
          ? _value.isBadged
          : isBadged // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkUserResponseImplCopyWith<$Res>
    implements $BookmarkUserResponseCopyWith<$Res> {
  factory _$$BookmarkUserResponseImplCopyWith(_$BookmarkUserResponseImpl value,
          $Res Function(_$BookmarkUserResponseImpl) then) =
      __$$BookmarkUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'is_badged') bool? isBadged,
      @JsonKey(name: 'is_premium') bool? isPremium,
      @JsonKey(name: 'is_following') bool? isFollowing});
}

/// @nodoc
class __$$BookmarkUserResponseImplCopyWithImpl<$Res>
    extends _$BookmarkUserResponseCopyWithImpl<$Res, _$BookmarkUserResponseImpl>
    implements _$$BookmarkUserResponseImplCopyWith<$Res> {
  __$$BookmarkUserResponseImplCopyWithImpl(_$BookmarkUserResponseImpl _value,
      $Res Function(_$BookmarkUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? isBadged = freezed,
    Object? isPremium = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_$BookmarkUserResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBadged: freezed == isBadged
          ? _value.isBadged
          : isBadged // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkUserResponseImpl implements _BookmarkUserResponse {
  const _$BookmarkUserResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'is_badged') this.isBadged,
      @JsonKey(name: 'is_premium') this.isPremium,
      @JsonKey(name: 'is_following') this.isFollowing});

  factory _$BookmarkUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkUserResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'is_badged')
  final bool? isBadged;
  @override
  @JsonKey(name: 'is_premium')
  final bool? isPremium;
  @override
  @JsonKey(name: 'is_following')
  final bool? isFollowing;

  @override
  String toString() {
    return 'BookmarkUserResponse(id: $id, username: $username, profileImage: $profileImage, isBadged: $isBadged, isPremium: $isPremium, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkUserResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isBadged, isBadged) ||
                other.isBadged == isBadged) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, profileImage,
      isBadged, isPremium, isFollowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkUserResponseImplCopyWith<_$BookmarkUserResponseImpl>
      get copyWith =>
          __$$BookmarkUserResponseImplCopyWithImpl<_$BookmarkUserResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkUserResponseImplToJson(
      this,
    );
  }
}

abstract class _BookmarkUserResponse implements BookmarkUserResponse {
  const factory _BookmarkUserResponse(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'profile_image') final String? profileImage,
          @JsonKey(name: 'is_badged') final bool? isBadged,
          @JsonKey(name: 'is_premium') final bool? isPremium,
          @JsonKey(name: 'is_following') final bool? isFollowing}) =
      _$BookmarkUserResponseImpl;

  factory _BookmarkUserResponse.fromJson(Map<String, dynamic> json) =
      _$BookmarkUserResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'is_badged')
  bool? get isBadged;
  @override
  @JsonKey(name: 'is_premium')
  bool? get isPremium;
  @override
  @JsonKey(name: 'is_following')
  bool? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkUserResponseImplCopyWith<_$BookmarkUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookmarkQuestionDetailResponse _$BookmarkQuestionDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _BookmarkQuestionDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$BookmarkQuestionDetailResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_text')
  String? get questionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_type')
  String? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_percentage')
  double? get difficultyPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'test_title')
  String? get testTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  BookmarkCategoryResponse? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkQuestionDetailResponseCopyWith<BookmarkQuestionDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkQuestionDetailResponseCopyWith<$Res> {
  factory $BookmarkQuestionDetailResponseCopyWith(
          BookmarkQuestionDetailResponse value,
          $Res Function(BookmarkQuestionDetailResponse) then) =
      _$BookmarkQuestionDetailResponseCopyWithImpl<$Res,
          BookmarkQuestionDetailResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'question_text') String? questionText,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'difficulty_percentage') double? difficultyPercentage,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'test_title') String? testTitle,
      @JsonKey(name: 'category') BookmarkCategoryResponse? category});

  $BookmarkCategoryResponseCopyWith<$Res>? get category;
}

/// @nodoc
class _$BookmarkQuestionDetailResponseCopyWithImpl<$Res,
        $Val extends BookmarkQuestionDetailResponse>
    implements $BookmarkQuestionDetailResponseCopyWith<$Res> {
  _$BookmarkQuestionDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionText = freezed,
    Object? questionType = freezed,
    Object? difficultyPercentage = freezed,
    Object? createdAt = freezed,
    Object? testTitle = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      difficultyPercentage: freezed == difficultyPercentage
          ? _value.difficultyPercentage
          : difficultyPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      testTitle: freezed == testTitle
          ? _value.testTitle
          : testTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BookmarkCategoryResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookmarkCategoryResponseCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $BookmarkCategoryResponseCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarkQuestionDetailResponseImplCopyWith<$Res>
    implements $BookmarkQuestionDetailResponseCopyWith<$Res> {
  factory _$$BookmarkQuestionDetailResponseImplCopyWith(
          _$BookmarkQuestionDetailResponseImpl value,
          $Res Function(_$BookmarkQuestionDetailResponseImpl) then) =
      __$$BookmarkQuestionDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'question_text') String? questionText,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'difficulty_percentage') double? difficultyPercentage,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'test_title') String? testTitle,
      @JsonKey(name: 'category') BookmarkCategoryResponse? category});

  @override
  $BookmarkCategoryResponseCopyWith<$Res>? get category;
}

/// @nodoc
class __$$BookmarkQuestionDetailResponseImplCopyWithImpl<$Res>
    extends _$BookmarkQuestionDetailResponseCopyWithImpl<$Res,
        _$BookmarkQuestionDetailResponseImpl>
    implements _$$BookmarkQuestionDetailResponseImplCopyWith<$Res> {
  __$$BookmarkQuestionDetailResponseImplCopyWithImpl(
      _$BookmarkQuestionDetailResponseImpl _value,
      $Res Function(_$BookmarkQuestionDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionText = freezed,
    Object? questionType = freezed,
    Object? difficultyPercentage = freezed,
    Object? createdAt = freezed,
    Object? testTitle = freezed,
    Object? category = freezed,
  }) {
    return _then(_$BookmarkQuestionDetailResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      difficultyPercentage: freezed == difficultyPercentage
          ? _value.difficultyPercentage
          : difficultyPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      testTitle: freezed == testTitle
          ? _value.testTitle
          : testTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BookmarkCategoryResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkQuestionDetailResponseImpl
    implements _BookmarkQuestionDetailResponse {
  const _$BookmarkQuestionDetailResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'question_text') this.questionText,
      @JsonKey(name: 'question_type') this.questionType,
      @JsonKey(name: 'difficulty_percentage') this.difficultyPercentage,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'test_title') this.testTitle,
      @JsonKey(name: 'category') this.category});

  factory _$BookmarkQuestionDetailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BookmarkQuestionDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'question_text')
  final String? questionText;
  @override
  @JsonKey(name: 'question_type')
  final String? questionType;
  @override
  @JsonKey(name: 'difficulty_percentage')
  final double? difficultyPercentage;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'test_title')
  final String? testTitle;
  @override
  @JsonKey(name: 'category')
  final BookmarkCategoryResponse? category;

  @override
  String toString() {
    return 'BookmarkQuestionDetailResponse(id: $id, questionText: $questionText, questionType: $questionType, difficultyPercentage: $difficultyPercentage, createdAt: $createdAt, testTitle: $testTitle, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkQuestionDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.difficultyPercentage, difficultyPercentage) ||
                other.difficultyPercentage == difficultyPercentage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.testTitle, testTitle) ||
                other.testTitle == testTitle) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionText, questionType,
      difficultyPercentage, createdAt, testTitle, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkQuestionDetailResponseImplCopyWith<
          _$BookmarkQuestionDetailResponseImpl>
      get copyWith => __$$BookmarkQuestionDetailResponseImplCopyWithImpl<
          _$BookmarkQuestionDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkQuestionDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _BookmarkQuestionDetailResponse
    implements BookmarkQuestionDetailResponse {
  const factory _BookmarkQuestionDetailResponse(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'question_text') final String? questionText,
          @JsonKey(name: 'question_type') final String? questionType,
          @JsonKey(name: 'difficulty_percentage')
          final double? difficultyPercentage,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'test_title') final String? testTitle,
          @JsonKey(name: 'category')
          final BookmarkCategoryResponse? category}) =
      _$BookmarkQuestionDetailResponseImpl;

  factory _BookmarkQuestionDetailResponse.fromJson(Map<String, dynamic> json) =
      _$BookmarkQuestionDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'question_text')
  String? get questionText;
  @override
  @JsonKey(name: 'question_type')
  String? get questionType;
  @override
  @JsonKey(name: 'difficulty_percentage')
  double? get difficultyPercentage;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'test_title')
  String? get testTitle;
  @override
  @JsonKey(name: 'category')
  BookmarkCategoryResponse? get category;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkQuestionDetailResponseImplCopyWith<
          _$BookmarkQuestionDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookmarkCategoryResponse _$BookmarkCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _BookmarkCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$BookmarkCategoryResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tests')
  int? get totalTests => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'emoji')
  String? get emoji => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkCategoryResponseCopyWith<BookmarkCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCategoryResponseCopyWith<$Res> {
  factory $BookmarkCategoryResponseCopyWith(BookmarkCategoryResponse value,
          $Res Function(BookmarkCategoryResponse) then) =
      _$BookmarkCategoryResponseCopyWithImpl<$Res, BookmarkCategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_tests') int? totalTests,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'emoji') String? emoji,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$BookmarkCategoryResponseCopyWithImpl<$Res,
        $Val extends BookmarkCategoryResponse>
    implements $BookmarkCategoryResponseCopyWith<$Res> {
  _$BookmarkCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalTests = freezed,
    Object? totalQuestions = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? emoji = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTests: freezed == totalTests
          ? _value.totalTests
          : totalTests // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkCategoryResponseImplCopyWith<$Res>
    implements $BookmarkCategoryResponseCopyWith<$Res> {
  factory _$$BookmarkCategoryResponseImplCopyWith(
          _$BookmarkCategoryResponseImpl value,
          $Res Function(_$BookmarkCategoryResponseImpl) then) =
      __$$BookmarkCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_tests') int? totalTests,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'emoji') String? emoji,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$BookmarkCategoryResponseImplCopyWithImpl<$Res>
    extends _$BookmarkCategoryResponseCopyWithImpl<$Res,
        _$BookmarkCategoryResponseImpl>
    implements _$$BookmarkCategoryResponseImplCopyWith<$Res> {
  __$$BookmarkCategoryResponseImplCopyWithImpl(
      _$BookmarkCategoryResponseImpl _value,
      $Res Function(_$BookmarkCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalTests = freezed,
    Object? totalQuestions = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? emoji = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BookmarkCategoryResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTests: freezed == totalTests
          ? _value.totalTests
          : totalTests // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkCategoryResponseImpl implements _BookmarkCategoryResponse {
  const _$BookmarkCategoryResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'total_tests') this.totalTests,
      @JsonKey(name: 'total_questions') this.totalQuestions,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'emoji') this.emoji,
      @JsonKey(name: 'image') this.image});

  factory _$BookmarkCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkCategoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'total_tests')
  final int? totalTests;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'emoji')
  final String? emoji;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'BookmarkCategoryResponse(id: $id, totalTests: $totalTests, totalQuestions: $totalQuestions, title: $title, slug: $slug, description: $description, emoji: $emoji, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkCategoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalTests, totalTests) ||
                other.totalTests == totalTests) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, totalTests, totalQuestions,
      title, slug, description, emoji, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkCategoryResponseImplCopyWith<_$BookmarkCategoryResponseImpl>
      get copyWith => __$$BookmarkCategoryResponseImplCopyWithImpl<
          _$BookmarkCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _BookmarkCategoryResponse implements BookmarkCategoryResponse {
  const factory _BookmarkCategoryResponse(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'total_tests') final int? totalTests,
          @JsonKey(name: 'total_questions') final int? totalQuestions,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'slug') final String? slug,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'emoji') final String? emoji,
          @JsonKey(name: 'image') final String? image}) =
      _$BookmarkCategoryResponseImpl;

  factory _BookmarkCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$BookmarkCategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'total_tests')
  int? get totalTests;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'emoji')
  String? get emoji;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkCategoryResponseImplCopyWith<_$BookmarkCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
