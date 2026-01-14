import 'package:equatable/equatable.dart';
import 'package:testabd/data/remote_source/account/model/region_item_response.dart';

class RegionModel extends Equatable {
  final int? id;
  final String? name;
  final double? lat;
  final double? lon;
  final int? countryId;

  const RegionModel({this.id, this.name, this.lat, this.lon, this.countryId});

  static RegionModel fromResponse(RegionItemResponse region) {
    return RegionModel(
      id: region.id,
      name: region.name,
      lat: region.lat,
      lon: region.lon,
      countryId: region.country,
    );
  }

  @override
  List<Object?> get props => [id, name, lat, lon, countryId];
}
