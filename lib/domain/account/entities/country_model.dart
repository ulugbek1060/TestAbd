import 'package:equatable/equatable.dart';

class CountryModel with EquatableMixin {
  final int? id;
  final String? name;
  final String? code;
  final double? lat;
  final double? lon;

  CountryModel({this.id, this.name, this.code, this.lat, this.lon});

  @override
  List<Object?> get props => [id, name, code, lat, lon];
}
