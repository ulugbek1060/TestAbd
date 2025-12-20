import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';

part 'home_state.freezed.dart';

@freezed
class FollowedQuizState with _$FollowedQuizState {
  const factory FollowedQuizState({
    @Default(false) bool isLoading,
    @Default([]) List<QuizItem> questions,
    @Default(false) bool isLastPage,
    @Default(1) int nextPage,
    @Default(1) int previousPage,
    String? error,
  }) = _FollowedQuizState;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(FollowedQuizState()) FollowedQuizState followedQuizStata,
  }) = _HomeState;
}
