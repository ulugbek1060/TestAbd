import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:testabd/core/services/session_service.dart';
import 'package:testabd/core/services/token_service.dart';
import 'package:testabd/features/profile/settings/edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  final SessionService _sessionService;
  final TokenService _tokenService;

  EditProfileCubit(this._sessionService, this._tokenService)
    : super(EditProfileState());

  Future<void> logout() async {
    final result = await _tokenService.clear();
    if (result) _sessionService.clear();
  }
}
