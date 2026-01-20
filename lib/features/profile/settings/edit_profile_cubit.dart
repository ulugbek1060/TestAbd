import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:testabd/core/services/session_service.dart';
import 'package:testabd/core/services/token_service.dart';
import 'package:testabd/domain/auth/auth_repository.dart';
import 'package:testabd/features/profile/settings/edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  final AuthRepository _authRepository;

  EditProfileCubit(this._authRepository)
    : super(EditProfileState());

  Future<void> logout() async {
    _authRepository.logout();
  }
}
