// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaderboardState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  int get previousPage => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  List<LeaderboardUser> get leaderboard => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaderboardStateCopyWith<LeaderboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(
          LeaderboardState value, $Res Function(LeaderboardState) then) =
      _$LeaderboardStateCopyWithImpl<$Res, LeaderboardState>;
  @useResult
  $Res call(
      {bool isLoading,
      int nextPage,
      int previousPage,
      bool isLastPage,
      List<LeaderboardUser> leaderboard,
      String? error});
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res, $Val extends LeaderboardState>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? nextPage = null,
    Object? previousPage = null,
    Object? isLastPage = null,
    Object? leaderboard = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: null == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      leaderboard: null == leaderboard
          ? _value.leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardStateImplCopyWith<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  factory _$$LeaderboardStateImplCopyWith(_$LeaderboardStateImpl value,
          $Res Function(_$LeaderboardStateImpl) then) =
      __$$LeaderboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int nextPage,
      int previousPage,
      bool isLastPage,
      List<LeaderboardUser> leaderboard,
      String? error});
}

/// @nodoc
class __$$LeaderboardStateImplCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$LeaderboardStateImpl>
    implements _$$LeaderboardStateImplCopyWith<$Res> {
  __$$LeaderboardStateImplCopyWithImpl(_$LeaderboardStateImpl _value,
      $Res Function(_$LeaderboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? nextPage = null,
    Object? previousPage = null,
    Object? isLastPage = null,
    Object? leaderboard = null,
    Object? error = freezed,
  }) {
    return _then(_$LeaderboardStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: null == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      leaderboard: null == leaderboard
          ? _value._leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LeaderboardStateImpl implements _LeaderboardState {
  const _$LeaderboardStateImpl(
      {this.isLoading = false,
      this.nextPage = 1,
      this.previousPage = 1,
      this.isLastPage = false,
      final List<LeaderboardUser> leaderboard = const [],
      this.error})
      : _leaderboard = leaderboard;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int nextPage;
  @override
  @JsonKey()
  final int previousPage;
  @override
  @JsonKey()
  final bool isLastPage;
  final List<LeaderboardUser> _leaderboard;
  @override
  @JsonKey()
  List<LeaderboardUser> get leaderboard {
    if (_leaderboard is EqualUnmodifiableListView) return _leaderboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaderboard);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'LeaderboardState(isLoading: $isLoading, nextPage: $nextPage, previousPage: $previousPage, isLastPage: $isLastPage, leaderboard: $leaderboard, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            const DeepCollectionEquality()
                .equals(other._leaderboard, _leaderboard) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      nextPage,
      previousPage,
      isLastPage,
      const DeepCollectionEquality().hash(_leaderboard),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardStateImplCopyWith<_$LeaderboardStateImpl> get copyWith =>
      __$$LeaderboardStateImplCopyWithImpl<_$LeaderboardStateImpl>(
          this, _$identity);
}

abstract class _LeaderboardState implements LeaderboardState {
  const factory _LeaderboardState(
      {final bool isLoading,
      final int nextPage,
      final int previousPage,
      final bool isLastPage,
      final List<LeaderboardUser> leaderboard,
      final String? error}) = _$LeaderboardStateImpl;

  @override
  bool get isLoading;
  @override
  int get nextPage;
  @override
  int get previousPage;
  @override
  bool get isLastPage;
  @override
  List<LeaderboardUser> get leaderboard;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardStateImplCopyWith<_$LeaderboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
