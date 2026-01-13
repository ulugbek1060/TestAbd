// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionsResponseImpl _$$RegionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionsResponseImpl(
      regions: (json['regions'] as List<dynamic>?)
          ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegionsResponseImplToJson(
        _$RegionsResponseImpl instance) =>
    <String, dynamic>{
      'regions': instance.regions,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      country: (json['country'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
    };
