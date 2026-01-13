import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_response.freezed.dart';
part 'countries_response.g.dart';

@freezed
class CountriesResponse with _$CountriesResponse {
  const factory CountriesResponse({
    @JsonKey(name: 'countries') required List<Country> countries,
  }) = _CountriesResponse;

  factory CountriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CountriesResponseFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lon') required double lon,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
