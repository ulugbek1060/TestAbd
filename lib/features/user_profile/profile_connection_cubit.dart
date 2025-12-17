import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/user_profile/profile_connection_state.dart';
import 'package:testabd/main.dart';

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
    logger.d('---------> load connection ${userId} <----------');
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
}
