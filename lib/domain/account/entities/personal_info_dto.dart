import 'package:equatable/equatable.dart';
import 'package:testabd/domain/account/entities/country_model.dart';
import 'package:testabd/domain/account/entities/district_model.dart';
import 'package:testabd/domain/account/entities/region_model.dart';
import 'package:testabd/domain/account/entities/settlement_model.dart';

class PersonalInfoDto with EquatableMixin {
  final CountryModel? country;
  final RegionModel? region;
  final DistrictModel? district;
  final SettlementModel? settlement;
  final String firstName;
  final String lastName;
  final String username;
  final String bio;
  final String email;
  final String phoneNumber;

  const PersonalInfoDto({
    this.country,
    this.region,
    this.district,
    this.settlement,
    this.firstName = "",
    this.lastName = "",
    this.username = "",
    this.bio = "",
    this.email = "",
    this.phoneNumber = "",
  });

  PersonalInfoDto copyWith({
    CountryModel? country,
    RegionModel? region,
    DistrictModel? district,
    SettlementModel? settlement,
    String? firstName,
    String? lastName,
    String? username,
    String? bio,
    String? email,
    String? phoneNumber,
  }) {
    return PersonalInfoDto(
      country: country ?? this.country,
      region: region ?? this.region,
      district: district ?? this.district,
      settlement: settlement ?? this.settlement,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }


  Map<String, dynamic> toJson() => {
    'country': country?.toJson(),
    'region': region?.toJson(),
    'district': district?.toJson(),
    'settlement': settlement?.toJson(),
    'first_name': firstName,
    'last_name': lastName,
    'username': username,
    'bio': bio,
    'email': email,
    'phone_number': phoneNumber,
  };

  @override
  List<Object?> get props => [
    firstName,
    lastName,
    username,
    bio,
    email,
    phoneNumber,
  ];

  @override
  String toString() => toJson().toString();
}
