import 'package:equatable/equatable.dart';

class UserConnectionsModel extends Equatable {
  final List<UserConnectionModel> followers;
  final List<UserConnectionModel> following;

  const UserConnectionsModel({
     this.followers = const [],
     this.following = const [],
  });

  @override
  List<Object?> get props => [followers, following];
}

class UserConnectionModel extends Equatable {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String? profileImage;
  final bool isFollowing;

  const UserConnectionModel({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.profileImage,
    required this.isFollowing,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    firstName,
    lastName,
    profileImage,
    isFollowing,
  ];
}
