import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/features/profile/profile_state.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(false) bool isLoading,
    String? error,
    // theme state
    AppModeState? appModeState,
  }) = _EditProfileState;
}
