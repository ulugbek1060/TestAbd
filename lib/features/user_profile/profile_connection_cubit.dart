import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/user_profile/profile_connection_state.dart';

@injectable
class ProfileConnectionCubit extends Cubit<ProfileConnectionState> {
  final int userId;
  final AccountRepository _accountRepository;

  @factoryMethod
  ProfileConnectionCubit.create(
    @factoryParam this.userId,
    this._accountRepository,
  ) : super(ProfileConnectionState());

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
    if(user == null || user.isLoading) return;

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
      },
    );
  }
}
