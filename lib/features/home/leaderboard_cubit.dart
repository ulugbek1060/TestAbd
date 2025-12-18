import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/main.dart';

import 'leaderboard_state.dart';

@injectable
class LeaderboardCubit extends Cubit<LeaderboardState> {
  final AccountRepository _accountRepository;
  static const int _pageSize = 10;

  LeaderboardCubit(this._accountRepository) : super(LeaderboardState());

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
    logger.d('load leaderboard');
    if (state.isLoading || state.isLastPage) return;
    logger.d('load leaderboard');
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

  void followUser(int id) {}
}
