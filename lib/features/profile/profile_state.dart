import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/domain/quiz/entities/my_qursion_model.dart';
import 'package:testabd/domain/quiz/entities/questions_bookmark_model.dart';

part 'profile_state.freezed.dart';

// @freezed
// class ProfileState with _$ProfileState {
//   const factory ProfileState({
//     @Default(false) bool isLoading,
//     @Default(null) String? error,
//     // main data state
//     MyInfoModel? myInfoModel,
//     // user followers
//     @Default(UserConnectionsState()) UserConnectionsState userConnectionsState,
//     // questions bookmark
//     @Default(QuestionsBookmarkState())
//     QuestionsBookmarkState questionsBookmarkState,
//     // my questions
//     @Default(MyQuestionsState()) MyQuestionsState myQuestionsState,
//   }) = _ProfileState;
// }


class ProfileState extends Equatable {
  final bool isLoading;
  final String? error;
  final MyInfoModel? myInfoModel;
  final UserConnectionsState userConnectionsState;
  final QuestionsBookmarkState questionsBookmarkState;
  final MyQuestionsState myQuestionsState;

  const ProfileState({
    this.isLoading = false,
    this.error,
    this.myInfoModel,
    this.userConnectionsState = const UserConnectionsState(),
    this.questionsBookmarkState = const QuestionsBookmarkState(),
    this.myQuestionsState = const MyQuestionsState(),
  });

  ProfileState copyWith({
    bool? isLoading,
    String? error,
    MyInfoModel? myInfoModel,
    UserConnectionsState? userConnectionsState,
    QuestionsBookmarkState? questionsBookmarkState,
    MyQuestionsState? myQuestionsState,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      myInfoModel: myInfoModel ?? this.myInfoModel,
      userConnectionsState:
      userConnectionsState ?? this.userConnectionsState,
      questionsBookmarkState:
      questionsBookmarkState ?? this.questionsBookmarkState,
      myQuestionsState: myQuestionsState ?? this.myQuestionsState,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    error,
    myInfoModel,
    userConnectionsState,
    questionsBookmarkState,
    myQuestionsState,
  ];
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

// @freezed
// class MyQuestionsState with _$MyQuestionsState {
//   const factory MyQuestionsState({
//     @Default(false) bool isLoading,
//     String? error,
//     @Default([]) List<MyQuestionModel> myQuestions,
//   }) = _MyQuestionsState;
// }

class MyQuestionsState extends Equatable {
  final bool isLoading;
  final String? error;
  final List<MyQuestionModel> myQuestions;

  const MyQuestionsState({
    this.isLoading = false,
    this.error,
    this.myQuestions = const [],
  });

  MyQuestionsState copyWith({
    bool? isLoading,
    String? error,
    List<MyQuestionModel>? myQuestions,
  }) {
    return MyQuestionsState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      myQuestions: myQuestions ?? this.myQuestions,
    );
  }

  @override
  List<Object?> get props => [isLoading, error, myQuestions];
}

