import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/user_profile/profile_connection_state.dart';

class UserFollowEvent {
  final int userId;
  final bool isFollowing;

  UserFollowEvent(this.userId, this.isFollowing);
}

@lazySingleton
class UserFollowChangeListener {
  final PublishSubject<UserFollowEvent> _followSubject =
      PublishSubject<UserFollowEvent>();

  Stream<UserFollowEvent> get followStream => _followSubject.stream;

  void publish(UserFollowEvent event) {
    _followSubject.add(event);
  }

  void publishFollowChange(int userId, bool isFollowing) {
    publish(UserFollowEvent(userId, isFollowing));
  }

  void dispose() {
    _followSubject.close();
  }
}

@injectable
class ProfileConnectionCubit extends Cubit<ProfileConnectionState> {
  final int userId;
  final AccountRepository _accountRepository;
  final UserFollowChangeListener _followListener;
  late StreamSubscription<UserFollowEvent> _followSubscription;

  @factoryMethod
  ProfileConnectionCubit.create(
    @factoryParam this.userId,
    this._accountRepository,
    this._followListener,
  ) : super(ProfileConnectionState()) {
    _followSubscription = _followListener.followStream.listen((event) {
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

  Future<void> loadUserConnections() async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
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
        _followListener.publishFollowChange(id, !user.isFollowing);
      },
    );
  }
}
