
import 'package:freezed_annotation/freezed_annotation.dart';

part 'regions_response.freezed.dart';
part 'regions_response.g.dart';

@freezed
class RegionsResponse with _$RegionsResponse {
  factory RegionsResponse({
    @JsonKey(name: 'regions') List<Region>? regions,
  }) = _RegionsResponse;

  factory RegionsResponse.fromJson(Map<String, dynamic> json) =>
      _$RegionsResponseFromJson(json);
}

@freezed
class Region with _$Region {
  factory Region({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'lon') double? lon,
    @JsonKey(name: 'country') int? country,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}