import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/follow_listeners.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/user_profile/profile_connection_state.dart';

@injectable
class ProfileConnectionCubit extends Cubit<ProfileConnectionState> {
  final int userId;
  final AccountRepository _accountRepository;
  final UserFollowListener _connectionFollowListener;
  final UserFollowListener _userProfileFollowListener;

  late StreamSubscription<UserFollowEvent> _followSubscription;

  @factoryMethod
  ProfileConnectionCubit.create(
    @factoryParam this.userId,
    this._accountRepository,
    @Named.from(ConnectionFollowListener) this._connectionFollowListener,
    @Named.from(UserProfileFollowListener) this._userProfileFollowListener,
  ) : super(ProfileConnectionState()) {
    _followSubscription = _connectionFollowListener.followStream.listen((event) {
      final connections = state.connections.setFollowingByUserId(
        event.userId,
        event.isFollowing,
      );
      emit(state.copyWith(connections: connections));
    });
  }

  @override
  Future<void> close() {
    _followSubscription.cancel();
    return super.close();
  }


  Future<void> load() async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true));

    // delay
    await Future.delayed(const Duration(milliseconds: 500));

    final result = await _accountRepository.getUserConnections(userId);
    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
      },
      (value) {
        emit(state.copyWith(isLoading: false, connections: value, error: null));
      },
    );
  }

  Future<void> refresh() => load();

  Future<void> onFollowUser(int id) async {
    final user = state.connections.findUser(id);
    if (user == null || user.isLoading) return;

    // start loading
    emit(
      state.copyWith(connections: state.connections.startLoadingForUser(id)),
    );

    final result = await _accountRepository.followUser(id);

    result.fold(
      (error) {
        // TODO show error silently
        final connections = state.connections.stopLoadingForUser(id);
        emit(state.copyWith(connections: connections));
      },
      (value) {
        final connections = state.connections
            .toggleUserFollowingWithLoading(id)
            .stopLoadingForUser(id);

        emit(state.copyWith(connections: connections));

        /// publish follow event listen from [user_profile_cubit]
        _userProfileFollowListener.publish(
          UserFollowEvent(id, !user.isFollowing),
        );
      },
    );
  }
}
