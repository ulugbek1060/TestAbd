// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditUserDataState {
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditUserDataStateCopyWith<EditUserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserDataStateCopyWith<$Res> {
  factory $EditUserDataStateCopyWith(
          EditUserDataState value, $Res Function(EditUserDataState) then) =
      _$EditUserDataStateCopyWithImpl<$Res, EditUserDataState>;
  @useResult
  $Res call({String? error, bool isLoading});
}

/// @nodoc
class _$EditUserDataStateCopyWithImpl<$Res, $Val extends EditUserDataState>
    implements $EditUserDataStateCopyWith<$Res> {
  _$EditUserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditUserDataStateImplCopyWith<$Res>
    implements $EditUserDataStateCopyWith<$Res> {
  factory _$$EditUserDataStateImplCopyWith(_$EditUserDataStateImpl value,
          $Res Function(_$EditUserDataStateImpl) then) =
      __$$EditUserDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, bool isLoading});
}

/// @nodoc
class __$$EditUserDataStateImplCopyWithImpl<$Res>
    extends _$EditUserDataStateCopyWithImpl<$Res, _$EditUserDataStateImpl>
    implements _$$EditUserDataStateImplCopyWith<$Res> {
  __$$EditUserDataStateImplCopyWithImpl(_$EditUserDataStateImpl _value,
      $Res Function(_$EditUserDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$EditUserDataStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditUserDataStateImpl implements _EditUserDataState {
  const _$EditUserDataStateImpl({this.error, this.isLoading = false});

  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'EditUserDataState(error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserDataStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserDataStateImplCopyWith<_$EditUserDataStateImpl> get copyWith =>
      __$$EditUserDataStateImplCopyWithImpl<_$EditUserDataStateImpl>(
          this, _$identity);
}

abstract class _EditUserDataState implements EditUserDataState {
  const factory _EditUserDataState(
      {final String? error, final bool isLoading}) = _$EditUserDataStateImpl;

  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$EditUserDataStateImplCopyWith<_$EditUserDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
