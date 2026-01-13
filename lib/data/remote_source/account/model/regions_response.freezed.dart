// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionsResponse _$RegionsResponseFromJson(Map<String, dynamic> json) {
  return _RegionsResponse.fromJson(json);
}

/// @nodoc
mixin _$RegionsResponse {
  @JsonKey(name: 'regions')
  List<Region>? get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionsResponseCopyWith<RegionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionsResponseCopyWith<$Res> {
  factory $RegionsResponseCopyWith(
          RegionsResponse value, $Res Function(RegionsResponse) then) =
      _$RegionsResponseCopyWithImpl<$Res, RegionsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'regions') List<Region>? regions});
}

/// @nodoc
class _$RegionsResponseCopyWithImpl<$Res, $Val extends RegionsResponse>
    implements $RegionsResponseCopyWith<$Res> {
  _$RegionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = freezed,
  }) {
    return _then(_value.copyWith(
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionsResponseImplCopyWith<$Res>
    implements $RegionsResponseCopyWith<$Res> {
  factory _$$RegionsResponseImplCopyWith(_$RegionsResponseImpl value,
          $Res Function(_$RegionsResponseImpl) then) =
      __$$RegionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'regions') List<Region>? regions});
}

/// @nodoc
class __$$RegionsResponseImplCopyWithImpl<$Res>
    extends _$RegionsResponseCopyWithImpl<$Res, _$RegionsResponseImpl>
    implements _$$RegionsResponseImplCopyWith<$Res> {
  __$$RegionsResponseImplCopyWithImpl(
      _$RegionsResponseImpl _value, $Res Function(_$RegionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = freezed,
  }) {
    return _then(_$RegionsResponseImpl(
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionsResponseImpl implements _RegionsResponse {
  _$RegionsResponseImpl({@JsonKey(name: 'regions') final List<Region>? regions})
      : _regions = regions;

  factory _$RegionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionsResponseImplFromJson(json);

  final List<Region>? _regions;
  @override
  @JsonKey(name: 'regions')
  List<Region>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegionsResponse(regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionsResponseImpl &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionsResponseImplCopyWith<_$RegionsResponseImpl> get copyWith =>
      __$$RegionsResponseImplCopyWithImpl<_$RegionsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionsResponseImplToJson(
      this,
    );
  }
}

abstract class _RegionsResponse implements RegionsResponse {
  factory _RegionsResponse(
          {@JsonKey(name: 'regions') final List<Region>? regions}) =
      _$RegionsResponseImpl;

  factory _RegionsResponse.fromJson(Map<String, dynamic> json) =
      _$RegionsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'regions')
  List<Region>? get regions;
  @override
  @JsonKey(ignore: true)
  _$$RegionsResponseImplCopyWith<_$RegionsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  double? get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  int? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'lat') double? lat,
      @JsonKey(name: 'lon') double? lon,
      @JsonKey(name: 'country') int? country});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'lat') double? lat,
      @JsonKey(name: 'lon') double? lon,
      @JsonKey(name: 'country') int? country});
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? country = freezed,
  }) {
    return _then(_$RegionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  _$RegionImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'lat') this.lat,
      @JsonKey(name: 'lon') this.lon,
      @JsonKey(name: 'country') this.country});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'lat')
  final double? lat;
  @override
  @JsonKey(name: 'lon')
  final double? lon;
  @override
  @JsonKey(name: 'country')
  final int? country;

  @override
  String toString() {
    return 'Region(id: $id, name: $name, lat: $lat, lon: $lon, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lat, lon, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  factory _Region(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'lat') final double? lat,
      @JsonKey(name: 'lon') final double? lon,
      @JsonKey(name: 'country') final int? country}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'lat')
  double? get lat;
  @override
  @JsonKey(name: 'lon')
  double? get lon;
  @override
  @JsonKey(name: 'country')
  int? get country;
  @override
  @JsonKey(ignore: true)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
