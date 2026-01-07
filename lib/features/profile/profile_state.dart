import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/domain/quiz/entities/questions_bookmark_model.dart';

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
    @Default(UserConnectionsState()) UserConnectionsState userConnectionsState,
    // questions bookmark
    @Default(QuestionsBookmarkState()) QuestionsBookmarkState questionsBookmarkState,
  }) = _ProfileState;
}

@freezed
class AppModeState  with _$AppModeState {
  const factory AppModeState.light() = LightMode;
  const factory AppModeState.dark() = DarkMode;
}

@freezed
class UserConnectionsState with _$UserConnectionsState {
  const factory UserConnectionsState({
    @Default(false) bool isLoading,
    @Default(null) String? error,
    @Default(UserConnectionsModel()) UserConnectionsModel connections,
  }) = _UserConnectionsState;
}

@freezed
class QuestionsBookmarkState with _$QuestionsBookmarkState {
  const factory QuestionsBookmarkState({
    @Default(false) bool isLoading,
    @Default(null) String? error,
    @Default(QuestionsBookmarkModel()) QuestionsBookmarkModel questionsBookmark,
  }) = _QuestionsBookmarkState;
}

