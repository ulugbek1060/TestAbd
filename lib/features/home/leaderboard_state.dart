import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/core/theme/app_images.dart';
import 'package:testabd/domain/account/entities/leaderboard_model.dart';

part 'leaderboard_state.freezed.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default(false) bool isLoading,
    @Default(1) int nextPage,
    @Default(1) int previousPage,
    @Default(false) bool isLastPage,
    @Default([]) List<LeaderboardUser> leaderboard,
    String? error,
  }) = _LeaderboardState;
}

extension LeaderboardStateX on LeaderboardState {
  List<LeaderboardUser> _podiumUsers() =>
      leaderboard.where((u) => u.todayRank <= 3).toList()
        ..sort((a, b) => a.todayRank.compareTo(b.todayRank));

  List<LeaderboardUser> podiumForUI() => [
    _podiumUsers().firstWhere((u) => u.todayRank == 2),
    _podiumUsers().firstWhere((u) => u.todayRank == 1),
    _podiumUsers().firstWhere((u) => u.todayRank == 3),
  ];
}

extension PODIUMX on int {
  String get podiumString {
    switch (this) {
      case 1:
        return AppImages.rank1;
      case 2:
        return AppImages.rank2;
      case 3:
        return AppImages.rank3;
      default:
        return AppImages.logo;
    }
  }
}
