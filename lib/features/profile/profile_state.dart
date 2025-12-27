import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(null) String? error,

    // app mode state
    AppModeState? appModeState,
}) = _ProfileState;
}

@freezed
class AppModeState  with _$AppModeState {
  const factory AppModeState.light() = LightMode;
  const factory AppModeState.dark() = DarkMode;
}

