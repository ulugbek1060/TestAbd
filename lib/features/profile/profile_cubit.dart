import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/domain/auth/auth_repository.dart';
import 'package:testabd/main.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepository _authRepository;
  final AppModeService _appModeService;

  ProfileCubit(this._authRepository, this._appModeService)
    : super(ProfileState());

  // logout
  void logout() async {
    final result = await _authRepository.logout();
    result.fold(
      (error) {
        logger.e(error.message);
      },
      (_) {
        logger.d('Logout success');
      },
    );
  }
}
