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
mixin _$ProfileConnectionState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserConnectionsModel get connections => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileConnectionStateCopyWith<ProfileConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileConnectionStateCopyWith<$Res> {
  factory $ProfileConnectionStateCopyWith(ProfileConnectionState value,
          $Res Function(ProfileConnectionState) then) =
      _$ProfileConnectionStateCopyWithImpl<$Res, ProfileConnectionState>;
  @useResult
  $Res call({bool isLoading, UserConnectionsModel connections, String? error});
}

/// @nodoc
class _$ProfileConnectionStateCopyWithImpl<$Res,
        $Val extends ProfileConnectionState>
    implements $ProfileConnectionStateCopyWith<$Res> {
  _$ProfileConnectionStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfileConnectionInitialImplCopyWith<$Res>
    implements $ProfileConnectionStateCopyWith<$Res> {
  factory _$$ProfileConnectionInitialImplCopyWith(
          _$ProfileConnectionInitialImpl value,
          $Res Function(_$ProfileConnectionInitialImpl) then) =
      __$$ProfileConnectionInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, UserConnectionsModel connections, String? error});
}

/// @nodoc
class __$$ProfileConnectionInitialImplCopyWithImpl<$Res>
    extends _$ProfileConnectionStateCopyWithImpl<$Res,
        _$ProfileConnectionInitialImpl>
    implements _$$ProfileConnectionInitialImplCopyWith<$Res> {
  __$$ProfileConnectionInitialImplCopyWithImpl(
      _$ProfileConnectionInitialImpl _value,
      $Res Function(_$ProfileConnectionInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? connections = null,
    Object? error = freezed,
  }) {
    return _then(_$ProfileConnectionInitialImpl(
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

class _$ProfileConnectionInitialImpl implements _ProfileConnectionInitial {
  const _$ProfileConnectionInitialImpl(
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
    return 'ProfileConnectionState(isLoading: $isLoading, connections: $connections, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileConnectionInitialImpl &&
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
  _$$ProfileConnectionInitialImplCopyWith<_$ProfileConnectionInitialImpl>
      get copyWith => __$$ProfileConnectionInitialImplCopyWithImpl<
          _$ProfileConnectionInitialImpl>(this, _$identity);
}

abstract class _ProfileConnectionInitial implements ProfileConnectionState {
  const factory _ProfileConnectionInitial(
      {final bool isLoading,
      final UserConnectionsModel connections,
      final String? error}) = _$ProfileConnectionInitialImpl;

  @override
  bool get isLoading;
  @override
  UserConnectionsModel get connections;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ProfileConnectionInitialImplCopyWith<_$ProfileConnectionInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
