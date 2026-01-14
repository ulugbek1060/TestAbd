import 'package:equatable/equatable.dart';
import 'package:testabd/data/remote_source/account/model/district_item_response.dart';

class DistrictModel extends Equatable {
  final int? id;
  final String? name;
  final double? lat;
  final double? lon;
  final int? region;

  const DistrictModel({
    required this.id,
    required this.name,
    required this.lat,
    required this.lon,
    required this.region,
  });

  static DistrictModel fromResponse(DistrictItemResponse response) {
    return DistrictModel(
      id: response.id,
      name: response.name,
      lat: response.lat,
      lon: response.lon,
      region: response.region,
    );
  }

  @override
  List<Object?> get props => [id, name, lat, lon, region];
}
