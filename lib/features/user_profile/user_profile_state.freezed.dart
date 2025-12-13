// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopicsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  List<TopicItem> get topics => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  int get previousPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicsStateCopyWith<TopicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsStateCopyWith<$Res> {
  factory $TopicsStateCopyWith(
          TopicsState value, $Res Function(TopicsState) then) =
      _$TopicsStateCopyWithImpl<$Res, TopicsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      List<TopicItem> topics,
      int nextPage,
      int previousPage});
}

/// @nodoc
class _$TopicsStateCopyWithImpl<$Res, $Val extends TopicsState>
    implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? topics = null,
    Object? nextPage = null,
    Object? previousPage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: null == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicsStateImplCopyWith<$Res>
    implements $TopicsStateCopyWith<$Res> {
  factory _$$TopicsStateImplCopyWith(
          _$TopicsStateImpl value, $Res Function(_$TopicsStateImpl) then) =
      __$$TopicsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      List<TopicItem> topics,
      int nextPage,
      int previousPage});
}

/// @nodoc
class __$$TopicsStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$TopicsStateImpl>
    implements _$$TopicsStateImplCopyWith<$Res> {
  __$$TopicsStateImplCopyWithImpl(
      _$TopicsStateImpl _value, $Res Function(_$TopicsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? topics = null,
    Object? nextPage = null,
    Object? previousPage = null,
  }) {
    return _then(_$TopicsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: null == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TopicsStateImpl implements _TopicsState {
  const _$TopicsStateImpl(
      {this.isLoading = false,
      this.isLoadingMore = false,
      final List<TopicItem> topics = const [],
      this.nextPage = 1,
      this.previousPage = 0})
      : _topics = topics;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  final List<TopicItem> _topics;
  @override
  @JsonKey()
  List<TopicItem> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @JsonKey()
  final int nextPage;
  @override
  @JsonKey()
  final int previousPage;

  @override
  String toString() {
    return 'TopicsState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, topics: $topics, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoadingMore,
      const DeepCollectionEquality().hash(_topics), nextPage, previousPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsStateImplCopyWith<_$TopicsStateImpl> get copyWith =>
      __$$TopicsStateImplCopyWithImpl<_$TopicsStateImpl>(this, _$identity);
}

abstract class _TopicsState implements TopicsState {
  const factory _TopicsState(
      {final bool isLoading,
      final bool isLoadingMore,
      final List<TopicItem> topics,
      final int nextPage,
      final int previousPage}) = _$TopicsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  List<TopicItem> get topics;
  @override
  int get nextPage;
  @override
  int get previousPage;
  @override
  @JsonKey(ignore: true)
  _$$TopicsStateImplCopyWith<_$TopicsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfileState {
// global loading
  bool get isLoading => throw _privateConstructorUsedError; // user profile
  UserProfileModel? get profile =>
      throw _privateConstructorUsedError; // global errors
  String? get error => throw _privateConstructorUsedError; // follow loading
  bool? get followLoading => throw _privateConstructorUsedError; // topics state
  TopicsState get topicsState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserProfileModel? profile,
      String? error,
      bool? followLoading,
      TopicsState topicsState});

  $TopicsStateCopyWith<$Res> get topicsState;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? profile = freezed,
    Object? error = freezed,
    Object? followLoading = freezed,
    Object? topicsState = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      followLoading: freezed == followLoading
          ? _value.followLoading
          : followLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      topicsState: null == topicsState
          ? _value.topicsState
          : topicsState // ignore: cast_nullable_to_non_nullable
              as TopicsState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicsStateCopyWith<$Res> get topicsState {
    return $TopicsStateCopyWith<$Res>(_value.topicsState, (value) {
      return _then(_value.copyWith(topicsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileStateImplCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$UserProfileStateImplCopyWith(_$UserProfileStateImpl value,
          $Res Function(_$UserProfileStateImpl) then) =
      __$$UserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserProfileModel? profile,
      String? error,
      bool? followLoading,
      TopicsState topicsState});

  @override
  $TopicsStateCopyWith<$Res> get topicsState;
}

/// @nodoc
class __$$UserProfileStateImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileStateImpl>
    implements _$$UserProfileStateImplCopyWith<$Res> {
  __$$UserProfileStateImplCopyWithImpl(_$UserProfileStateImpl _value,
      $Res Function(_$UserProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? profile = freezed,
    Object? error = freezed,
    Object? followLoading = freezed,
    Object? topicsState = null,
  }) {
    return _then(_$UserProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      followLoading: freezed == followLoading
          ? _value.followLoading
          : followLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      topicsState: null == topicsState
          ? _value.topicsState
          : topicsState // ignore: cast_nullable_to_non_nullable
              as TopicsState,
    ));
  }
}

/// @nodoc

class _$UserProfileStateImpl implements _UserProfileState {
  const _$UserProfileStateImpl(
      {this.isLoading = false,
      this.profile,
      this.error,
      this.followLoading = false,
      this.topicsState = const TopicsState()});

// global loading
  @override
  @JsonKey()
  final bool isLoading;
// user profile
  @override
  final UserProfileModel? profile;
// global errors
  @override
  final String? error;
// follow loading
  @override
  @JsonKey()
  final bool? followLoading;
// topics state
  @override
  @JsonKey()
  final TopicsState topicsState;

  @override
  String toString() {
    return 'UserProfileState(isLoading: $isLoading, profile: $profile, error: $error, followLoading: $followLoading, topicsState: $topicsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.followLoading, followLoading) ||
                other.followLoading == followLoading) &&
            (identical(other.topicsState, topicsState) ||
                other.topicsState == topicsState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, profile, error, followLoading, topicsState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      __$$UserProfileStateImplCopyWithImpl<_$UserProfileStateImpl>(
          this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {final bool isLoading,
      final UserProfileModel? profile,
      final String? error,
      final bool? followLoading,
      final TopicsState topicsState}) = _$UserProfileStateImpl;

  @override // global loading
  bool get isLoading;
  @override // user profile
  UserProfileModel? get profile;
  @override // global errors
  String? get error;
  @override // follow loading
  bool? get followLoading;
  @override // topics state
  TopicsState get topicsState;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
