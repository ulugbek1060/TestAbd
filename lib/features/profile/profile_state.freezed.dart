// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserConnectionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  UserConnectionsModel get connections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserConnectionsStateCopyWith<UserConnectionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserConnectionsStateCopyWith<$Res> {
  factory $UserConnectionsStateCopyWith(UserConnectionsState value,
          $Res Function(UserConnectionsState) then) =
      _$UserConnectionsStateCopyWithImpl<$Res, UserConnectionsState>;
  @useResult
  $Res call({bool isLoading, String? error, UserConnectionsModel connections});
}

/// @nodoc
class _$UserConnectionsStateCopyWithImpl<$Res,
        $Val extends UserConnectionsState>
    implements $UserConnectionsStateCopyWith<$Res> {
  _$UserConnectionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? connections = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as UserConnectionsModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserConnectionsStateImplCopyWith<$Res>
    implements $UserConnectionsStateCopyWith<$Res> {
  factory _$$UserConnectionsStateImplCopyWith(_$UserConnectionsStateImpl value,
          $Res Function(_$UserConnectionsStateImpl) then) =
      __$$UserConnectionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, UserConnectionsModel connections});
}

/// @nodoc
class __$$UserConnectionsStateImplCopyWithImpl<$Res>
    extends _$UserConnectionsStateCopyWithImpl<$Res, _$UserConnectionsStateImpl>
    implements _$$UserConnectionsStateImplCopyWith<$Res> {
  __$$UserConnectionsStateImplCopyWithImpl(_$UserConnectionsStateImpl _value,
      $Res Function(_$UserConnectionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? connections = null,
  }) {
    return _then(_$UserConnectionsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as UserConnectionsModel,
    ));
  }
}

/// @nodoc

class _$UserConnectionsStateImpl implements _UserConnectionsState {
  const _$UserConnectionsStateImpl(
      {this.isLoading = false,
      this.error = null,
      this.connections = const UserConnectionsModel()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final UserConnectionsModel connections;

  @override
  String toString() {
    return 'UserConnectionsState(isLoading: $isLoading, error: $error, connections: $connections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserConnectionsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.connections, connections) ||
                other.connections == connections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, connections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserConnectionsStateImplCopyWith<_$UserConnectionsStateImpl>
      get copyWith =>
          __$$UserConnectionsStateImplCopyWithImpl<_$UserConnectionsStateImpl>(
              this, _$identity);
}

abstract class _UserConnectionsState implements UserConnectionsState {
  const factory _UserConnectionsState(
      {final bool isLoading,
      final String? error,
      final UserConnectionsModel connections}) = _$UserConnectionsStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  UserConnectionsModel get connections;
  @override
  @JsonKey(ignore: true)
  _$$UserConnectionsStateImplCopyWith<_$UserConnectionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionsBookmarkState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  QuestionsBookmarkModel get questionsBookmark =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionsBookmarkStateCopyWith<QuestionsBookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsBookmarkStateCopyWith<$Res> {
  factory $QuestionsBookmarkStateCopyWith(QuestionsBookmarkState value,
          $Res Function(QuestionsBookmarkState) then) =
      _$QuestionsBookmarkStateCopyWithImpl<$Res, QuestionsBookmarkState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      QuestionsBookmarkModel questionsBookmark});
}

/// @nodoc
class _$QuestionsBookmarkStateCopyWithImpl<$Res,
        $Val extends QuestionsBookmarkState>
    implements $QuestionsBookmarkStateCopyWith<$Res> {
  _$QuestionsBookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? questionsBookmark = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      questionsBookmark: null == questionsBookmark
          ? _value.questionsBookmark
          : questionsBookmark // ignore: cast_nullable_to_non_nullable
              as QuestionsBookmarkModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsBookmarkStateImplCopyWith<$Res>
    implements $QuestionsBookmarkStateCopyWith<$Res> {
  factory _$$QuestionsBookmarkStateImplCopyWith(
          _$QuestionsBookmarkStateImpl value,
          $Res Function(_$QuestionsBookmarkStateImpl) then) =
      __$$QuestionsBookmarkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      QuestionsBookmarkModel questionsBookmark});
}

/// @nodoc
class __$$QuestionsBookmarkStateImplCopyWithImpl<$Res>
    extends _$QuestionsBookmarkStateCopyWithImpl<$Res,
        _$QuestionsBookmarkStateImpl>
    implements _$$QuestionsBookmarkStateImplCopyWith<$Res> {
  __$$QuestionsBookmarkStateImplCopyWithImpl(
      _$QuestionsBookmarkStateImpl _value,
      $Res Function(_$QuestionsBookmarkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? questionsBookmark = null,
  }) {
    return _then(_$QuestionsBookmarkStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      questionsBookmark: null == questionsBookmark
          ? _value.questionsBookmark
          : questionsBookmark // ignore: cast_nullable_to_non_nullable
              as QuestionsBookmarkModel,
    ));
  }
}

/// @nodoc

class _$QuestionsBookmarkStateImpl implements _QuestionsBookmarkState {
  const _$QuestionsBookmarkStateImpl(
      {this.isLoading = false,
      this.error = null,
      this.questionsBookmark = const QuestionsBookmarkModel()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final QuestionsBookmarkModel questionsBookmark;

  @override
  String toString() {
    return 'QuestionsBookmarkState(isLoading: $isLoading, error: $error, questionsBookmark: $questionsBookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsBookmarkStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.questionsBookmark, questionsBookmark) ||
                other.questionsBookmark == questionsBookmark));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, questionsBookmark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsBookmarkStateImplCopyWith<_$QuestionsBookmarkStateImpl>
      get copyWith => __$$QuestionsBookmarkStateImplCopyWithImpl<
          _$QuestionsBookmarkStateImpl>(this, _$identity);
}

abstract class _QuestionsBookmarkState implements QuestionsBookmarkState {
  const factory _QuestionsBookmarkState(
          {final bool isLoading,
          final String? error,
          final QuestionsBookmarkModel questionsBookmark}) =
      _$QuestionsBookmarkStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  QuestionsBookmarkModel get questionsBookmark;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsBookmarkStateImplCopyWith<_$QuestionsBookmarkStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
