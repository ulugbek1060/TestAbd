import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(null) String? error,
    // theme state
    AppModeState? appModeState,
    // main data state
    MyInfoModel? myInfoModel,
    // user followers
    @Default(UserConnectionsModel()) UserConnectionsModel connections,
  }) = _ProfileState;
}

@freezed
class AppModeState  with _$AppModeState {
  const factory AppModeState.light() = LightMode;
  const factory AppModeState.dark() = DarkMode;
}

