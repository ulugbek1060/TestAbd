import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/core/utils/follow_listeners.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/profile/profile_connection_state.dart';

@injectable
class ProfileConnectionCubit extends Cubit<ProfileConnectionState> {
  final AccountRepository _accountRepository;
  final ConnectionFollowEventListener _profileFollowListener;
  final AppMessageHandler _messageHandler;

  late StreamSubscription<UserFollowEvent> _followSubscription;

  ProfileConnectionCubit(
    this._accountRepository,
    @Named.from(ProfileFollowListener) this._profileFollowListener,
    this._messageHandler,
  ) : super(ProfileConnectionState()) {
    _followSubscription = _profileFollowListener.followStream.listen((event) {
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

  Future<void> refresh() async {
    _accountRepository.fetchMyInfo();
    load();
  }

  Future<void> load() async {
    final userInfo = await _accountRepository.userInfoStream.first;

    final userId = userInfo?.id;
    if (userId == null) return;

    emit(state.copyWith(isLoading: true));

    final result = await _accountRepository.getUserConnections(userId);
    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
      },
      (value) {
        emit(
          state.copyWith(
            isLoading: false,
            connections: value.toggleIsMe(userId),
            error: null,
          ),
        );
      },
    );
  }

  Future<void> onFollowUser(int id) async {
    final user = state.connections.findUser(id);
    if (user == null || user.isLoading) return;

    emit(
      state.copyWith(connections: state.connections.startLoadingForUser(id)),
    );

    final result = await _accountRepository.followUser(id);

    result.fold(
      (error) {
        // TODO show error silently
        final connections = state.connections.stopLoadingForUser(id);
        emit(state.copyWith(connections: connections));
        _messageHandler.handleDialog(error);
      },
      (value) {
        final connections = state.connections
            .toggleUserFollowingWithLoading(id)
            .stopLoadingForUser(id);

        emit(state.copyWith(connections: connections));

        _profileFollowListener.publish(UserFollowEvent(id, !user.isFollowing));
      },
    );
  }
}
