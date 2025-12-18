import 'package:equatable/equatable.dart';

class LeaderboardModel extends Equatable {
  final int count;
  final String? next;
  final String? previous;
  final List<LeaderboardUser> users;

  const LeaderboardModel({
    required this.count,
    this.next,
    this.previous,
    this.users = const [],
  });

  @override
  List<Object?> get props => [count, next, previous, users];
}

class LeaderboardUser extends Equatable {
  final int id;
  final String username;
  final String? profileImage;
  final int createdTests;
  final int coins;
  final int todayRank;
  final int yesterdayRank;
  final String? rankChange;
  final int rankChangeValue;
  final int testsSolved;
  final double avgTime;
  final int followers;
  final int following;
  final bool isFollowing;
  final bool isLoading;

  const LeaderboardUser({
    required this.id,
    required this.username,
    this.profileImage,
    required this.createdTests,
    required this.coins,
    required this.todayRank,
    required this.yesterdayRank,
    this.rankChange,
    required this.rankChangeValue,
    required this.testsSolved,
    required this.avgTime,
    required this.followers,
    required this.following,
    required this.isFollowing,
    this.isLoading = false,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    profileImage,
    createdTests,
    coins,
    todayRank,
    yesterdayRank,
    rankChange,
    rankChangeValue,
    testsSolved,
    avgTime,
    followers,
    following,
    isFollowing,
    isLoading
  ];
}
