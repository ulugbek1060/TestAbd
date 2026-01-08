// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserConnectionState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserConnectionsModel get connections => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserConnectionStateCopyWith<UserConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserConnectionStateCopyWith<$Res> {
  factory $UserConnectionStateCopyWith(
          UserConnectionState value, $Res Function(UserConnectionState) then) =
      _$UserConnectionStateCopyWithImpl<$Res, UserConnectionState>;
  @useResult
  $Res call({bool isLoading, UserConnectionsModel connections, String? error});
}

/// @nodoc
class _$UserConnectionStateCopyWithImpl<$Res, $Val extends UserConnectionState>
    implements $UserConnectionStateCopyWith<$Res> {
  _$UserConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? connections = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as UserConnectionsModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserConnectionStateImplCopyWith<$Res>
    implements $UserConnectionStateCopyWith<$Res> {
  factory _$$UserConnectionStateImplCopyWith(_$UserConnectionStateImpl value,
          $Res Function(_$UserConnectionStateImpl) then) =
      __$$UserConnectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, UserConnectionsModel connections, String? error});
}

/// @nodoc
class __$$UserConnectionStateImplCopyWithImpl<$Res>
    extends _$UserConnectionStateCopyWithImpl<$Res, _$UserConnectionStateImpl>
    implements _$$UserConnectionStateImplCopyWith<$Res> {
  __$$UserConnectionStateImplCopyWithImpl(_$UserConnectionStateImpl _value,
      $Res Function(_$UserConnectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? connections = null,
    Object? error = freezed,
  }) {
    return _then(_$UserConnectionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as UserConnectionsModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserConnectionStateImpl implements _UserConnectionState {
  const _$UserConnectionStateImpl(
      {this.isLoading = false,
      this.connections = const UserConnectionsModel(),
      this.error});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final UserConnectionsModel connections;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserConnectionState(isLoading: $isLoading, connections: $connections, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserConnectionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.connections, connections) ||
                other.connections == connections) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, connections, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserConnectionStateImplCopyWith<_$UserConnectionStateImpl> get copyWith =>
      __$$UserConnectionStateImplCopyWithImpl<_$UserConnectionStateImpl>(
          this, _$identity);
}

abstract class _UserConnectionState implements UserConnectionState {
  const factory _UserConnectionState(
      {final bool isLoading,
      final UserConnectionsModel connections,
      final String? error}) = _$UserConnectionStateImpl;

  @override
  bool get isLoading;
  @override
  UserConnectionsModel get connections;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$UserConnectionStateImplCopyWith<_$UserConnectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
