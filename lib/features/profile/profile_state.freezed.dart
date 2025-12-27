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
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError; // app mode state
  AppModeState? get appModeState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({bool isLoading, String? error, AppModeState? appModeState});

  $AppModeStateCopyWith<$Res>? get appModeState;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? appModeState = freezed,
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
      appModeState: freezed == appModeState
          ? _value.appModeState
          : appModeState // ignore: cast_nullable_to_non_nullable
              as AppModeState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppModeStateCopyWith<$Res>? get appModeState {
    if (_value.appModeState == null) {
      return null;
    }

    return $AppModeStateCopyWith<$Res>(_value.appModeState!, (value) {
      return _then(_value.copyWith(appModeState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, AppModeState? appModeState});

  @override
  $AppModeStateCopyWith<$Res>? get appModeState;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? appModeState = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      appModeState: freezed == appModeState
          ? _value.appModeState
          : appModeState // ignore: cast_nullable_to_non_nullable
              as AppModeState?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.isLoading = false, this.error = null, this.appModeState});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? error;
// app mode state
  @override
  final AppModeState? appModeState;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, error: $error, appModeState: $appModeState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.appModeState, appModeState) ||
                other.appModeState == appModeState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, appModeState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool isLoading,
      final String? error,
      final AppModeState? appModeState}) = _$ProfileStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override // app mode state
  AppModeState? get appModeState;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppModeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LightMode value) light,
    required TResult Function(DarkMode value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LightMode value)? light,
    TResult? Function(DarkMode value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LightMode value)? light,
    TResult Function(DarkMode value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModeStateCopyWith<$Res> {
  factory $AppModeStateCopyWith(
          AppModeState value, $Res Function(AppModeState) then) =
      _$AppModeStateCopyWithImpl<$Res, AppModeState>;
}

/// @nodoc
class _$AppModeStateCopyWithImpl<$Res, $Val extends AppModeState>
    implements $AppModeStateCopyWith<$Res> {
  _$AppModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LightModeImplCopyWith<$Res> {
  factory _$$LightModeImplCopyWith(
          _$LightModeImpl value, $Res Function(_$LightModeImpl) then) =
      __$$LightModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LightModeImplCopyWithImpl<$Res>
    extends _$AppModeStateCopyWithImpl<$Res, _$LightModeImpl>
    implements _$$LightModeImplCopyWith<$Res> {
  __$$LightModeImplCopyWithImpl(
      _$LightModeImpl _value, $Res Function(_$LightModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LightModeImpl implements LightMode {
  const _$LightModeImpl();

  @override
  String toString() {
    return 'AppModeState.light()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LightModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LightMode value) light,
    required TResult Function(DarkMode value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LightMode value)? light,
    TResult? Function(DarkMode value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LightMode value)? light,
    TResult Function(DarkMode value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class LightMode implements AppModeState {
  const factory LightMode() = _$LightModeImpl;
}

/// @nodoc
abstract class _$$DarkModeImplCopyWith<$Res> {
  factory _$$DarkModeImplCopyWith(
          _$DarkModeImpl value, $Res Function(_$DarkModeImpl) then) =
      __$$DarkModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DarkModeImplCopyWithImpl<$Res>
    extends _$AppModeStateCopyWithImpl<$Res, _$DarkModeImpl>
    implements _$$DarkModeImplCopyWith<$Res> {
  __$$DarkModeImplCopyWithImpl(
      _$DarkModeImpl _value, $Res Function(_$DarkModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DarkModeImpl implements DarkMode {
  const _$DarkModeImpl();

  @override
  String toString() {
    return 'AppModeState.dark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DarkModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LightMode value) light,
    required TResult Function(DarkMode value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LightMode value)? light,
    TResult? Function(DarkMode value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LightMode value)? light,
    TResult Function(DarkMode value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class DarkMode implements AppModeState {
  const factory DarkMode() = _$DarkModeImpl;
}
