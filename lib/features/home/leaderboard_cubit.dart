import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/follow_listeners.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/main.dart';

import 'leaderboard_state.dart';

@injectable
class LeaderboardCubit extends Cubit<LeaderboardState> {
  final AccountRepository _accountRepository;
  final UserFollowListener _followListener;
  late StreamSubscription _subscription;
  static const int _pageSize = 20;

  LeaderboardCubit(
    this._accountRepository,
    @Named.from(LeaderboardFollowListener) this._followListener,
  ) : super(LeaderboardState()) {
    /// listen the changes from user_profile_cubit
    _subscription = _followListener.followStream.listen((event) {
      final newList = state.followUser(event.userId, event.isFollowing);
      emit(state.copyWith(leaderboard: newList));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  Future<void> refresh() async {
    emit(state.copyWith(isLoading: true));
    final result = await _accountRepository.getLeaderboard(1, _pageSize);
    result.fold(
      (error) {
        // TODO show error silently
        emit(state.copyWith(error: error.message, isLoading: false));
      },
      (value) {
        emit(
          state.copyWith(
            isLoading: false,
            nextPage: 2,
            previousPage: 1,
            isLastPage: value.next == null,
            leaderboard: value.users,
          ),
        );
      },
    );
  }

  Future<void> loadLeaderboard() async {
    if (state.isLoading || state.isLastPage) return;
    emit(state.copyWith(isLoading: true));

    final result = await _accountRepository.getLeaderboard(
      state.nextPage,
      _pageSize,
    );

    result.fold(
      (error) {
        // TODO show error silently
        emit(state.copyWith(error: error.message, isLoading: false));
      },
      (value) {
        final nextPage = state.nextPage + 1;
        final previousPage = state.nextPage;
        final isLastPage = value.next == null;
        final list = [...state.leaderboard, ...value.users];
        emit(
          state.copyWith(
            isLoading: false,
            nextPage: nextPage,
            previousPage: previousPage,
            isLastPage: isLastPage,
            leaderboard: list,
          ),
        );
      },
    );
  }

  Future<void> followUser(int id) async {
    final leaderboard = state.leaderboard;
    final index = leaderboard.indexWhere((e) => e.id == id);

    if (index == -1) return;

    final user = leaderboard[index];
    if (user.isLoading) return;

    // Optimistically update UI: start loading
    final updatedLeaderboard = leaderboard.toList()
      ..[index] = user.copyWith(isLoading: true);

    emit(state.copyWith(leaderboard: updatedLeaderboard));

    final result = await _accountRepository.followUser(id);

    result.fold(
      (error) {
        // Optionally show silent error or revert UI
        // For now, just stop loading
        final revertedLeaderboard = state.leaderboard.toList()
          ..[index] = user.copyWith(isLoading: false);
        emit(state.copyWith(leaderboard: revertedLeaderboard));
      },
      (_) {
        final newFollowing = !user.isFollowing;
        final finalLeaderboard = state.leaderboard.toList()
          ..[index] = user.copyWith(
            isFollowing: newFollowing,
            isLoading: false,
          );

        emit(state.copyWith(leaderboard: finalLeaderboard));

        // Publish follow event for other cubits/blocs
        _followListener.publish(UserFollowEvent(id, newFollowing));
      },
    );
  }
}
