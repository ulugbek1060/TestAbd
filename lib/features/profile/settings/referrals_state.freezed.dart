// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referrals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferralsState {
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  ReferralListModel? get referrals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReferralsStateCopyWith<ReferralsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralsStateCopyWith<$Res> {
  factory $ReferralsStateCopyWith(
          ReferralsState value, $Res Function(ReferralsState) then) =
      _$ReferralsStateCopyWithImpl<$Res, ReferralsState>;
  @useResult
  $Res call({String? error, bool isLoading, ReferralListModel? referrals});
}

/// @nodoc
class _$ReferralsStateCopyWithImpl<$Res, $Val extends ReferralsState>
    implements $ReferralsStateCopyWith<$Res> {
  _$ReferralsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = null,
    Object? referrals = freezed,
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
      referrals: freezed == referrals
          ? _value.referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as ReferralListModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralsStateImplCopyWith<$Res>
    implements $ReferralsStateCopyWith<$Res> {
  factory _$$ReferralsStateImplCopyWith(_$ReferralsStateImpl value,
          $Res Function(_$ReferralsStateImpl) then) =
      __$$ReferralsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, bool isLoading, ReferralListModel? referrals});
}

/// @nodoc
class __$$ReferralsStateImplCopyWithImpl<$Res>
    extends _$ReferralsStateCopyWithImpl<$Res, _$ReferralsStateImpl>
    implements _$$ReferralsStateImplCopyWith<$Res> {
  __$$ReferralsStateImplCopyWithImpl(
      _$ReferralsStateImpl _value, $Res Function(_$ReferralsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = null,
    Object? referrals = freezed,
  }) {
    return _then(_$ReferralsStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      referrals: freezed == referrals
          ? _value.referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as ReferralListModel?,
    ));
  }
}

/// @nodoc

class _$ReferralsStateImpl implements _ReferralsState {
  const _$ReferralsStateImpl(
      {this.error, this.isLoading = false, this.referrals = null});

  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final ReferralListModel? referrals;

  @override
  String toString() {
    return 'ReferralsState(error: $error, isLoading: $isLoading, referrals: $referrals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralsStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.referrals, referrals) ||
                other.referrals == referrals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading, referrals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralsStateImplCopyWith<_$ReferralsStateImpl> get copyWith =>
      __$$ReferralsStateImplCopyWithImpl<_$ReferralsStateImpl>(
          this, _$identity);
}

abstract class _ReferralsState implements ReferralsState {
  const factory _ReferralsState(
      {final String? error,
      final bool isLoading,
      final ReferralListModel? referrals}) = _$ReferralsStateImpl;

  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  ReferralListModel? get referrals;
  @override
  @JsonKey(ignore: true)
  _$$ReferralsStateImplCopyWith<_$ReferralsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
