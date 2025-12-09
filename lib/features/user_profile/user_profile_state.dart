import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/user_profile_model.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default(false) bool isLoading,
    UserProfileModel? profile,
    String? error,
  }) = _UserProfileState;
}
