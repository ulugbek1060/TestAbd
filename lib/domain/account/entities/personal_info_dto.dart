class PersonalInfoDto {
  final String firstName;
  final String lastName;
  final String username;
  final String bio;
  final String email;
  final String phoneNumber;
  final String countryId;

  const PersonalInfoDto({
    this.firstName = "",
    this.lastName = "",
    this.username = "",
    this.bio = "",
    this.email = "",
    this.phoneNumber = "",
    this.countryId = "",
  });

  Map<String, dynamic> toJson() => {
    'first_name': firstName,
    'last_name': lastName,
    'username': username,
    'bio': bio,
    'email': email,
    'phone_number': phoneNumber,
    'country': countryId,
  };
}
