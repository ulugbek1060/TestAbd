// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regional_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegionalSettingsState {
  bool get isEditable => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<CountryModel> get countries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegionalSettingsStateCopyWith<RegionalSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionalSettingsStateCopyWith<$Res> {
  factory $RegionalSettingsStateCopyWith(RegionalSettingsState value,
          $Res Function(RegionalSettingsState) then) =
      _$RegionalSettingsStateCopyWithImpl<$Res, RegionalSettingsState>;
  @useResult
  $Res call(
      {bool isEditable,
      String? error,
      bool isLoading,
      List<CountryModel> countries});
}

/// @nodoc
class _$RegionalSettingsStateCopyWithImpl<$Res,
        $Val extends RegionalSettingsState>
    implements $RegionalSettingsStateCopyWith<$Res> {
  _$RegionalSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditable = null,
    Object? error = freezed,
    Object? isLoading = null,
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      isEditable: null == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionalSettingsStateImplCopyWith<$Res>
    implements $RegionalSettingsStateCopyWith<$Res> {
  factory _$$RegionalSettingsStateImplCopyWith(
          _$RegionalSettingsStateImpl value,
          $Res Function(_$RegionalSettingsStateImpl) then) =
      __$$RegionalSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEditable,
      String? error,
      bool isLoading,
      List<CountryModel> countries});
}

/// @nodoc
class __$$RegionalSettingsStateImplCopyWithImpl<$Res>
    extends _$RegionalSettingsStateCopyWithImpl<$Res,
        _$RegionalSettingsStateImpl>
    implements _$$RegionalSettingsStateImplCopyWith<$Res> {
  __$$RegionalSettingsStateImplCopyWithImpl(_$RegionalSettingsStateImpl _value,
      $Res Function(_$RegionalSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditable = null,
    Object? error = freezed,
    Object? isLoading = null,
    Object? countries = null,
  }) {
    return _then(_$RegionalSettingsStateImpl(
      isEditable: null == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc

class _$RegionalSettingsStateImpl implements _RegionalSettingsState {
  const _$RegionalSettingsStateImpl(
      {this.isEditable = false,
      this.error,
      this.isLoading = false,
      final List<CountryModel> countries = const []})
      : _countries = countries;

  @override
  @JsonKey()
  final bool isEditable;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;
  final List<CountryModel> _countries;
  @override
  @JsonKey()
  List<CountryModel> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'RegionalSettingsState(isEditable: $isEditable, error: $error, isLoading: $isLoading, countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionalSettingsStateImpl &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditable, error, isLoading,
      const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionalSettingsStateImplCopyWith<_$RegionalSettingsStateImpl>
      get copyWith => __$$RegionalSettingsStateImplCopyWithImpl<
          _$RegionalSettingsStateImpl>(this, _$identity);
}

abstract class _RegionalSettingsState implements RegionalSettingsState {
  const factory _RegionalSettingsState(
      {final bool isEditable,
      final String? error,
      final bool isLoading,
      final List<CountryModel> countries}) = _$RegionalSettingsStateImpl;

  @override
  bool get isEditable;
  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  List<CountryModel> get countries;
  @override
  @JsonKey(ignore: true)
  _$$RegionalSettingsStateImplCopyWith<_$RegionalSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
