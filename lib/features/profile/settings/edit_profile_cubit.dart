import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/features/profile/settings/edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final AppSettingsService _appModeService;

  EditProfileCubit(this._appModeService) : super(EditProfileState());
}
