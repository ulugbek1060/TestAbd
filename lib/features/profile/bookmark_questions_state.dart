
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/quiz/entities/questions_bookmark_model.dart';

part 'bookmark_questions_state.freezed.dart';

@freezed
class BookmarkQuestionsState with _$BookmarkQuestionsState {
  const factory BookmarkQuestionsState({
    @Default(false) bool isLoading,
    @Default(null) String? error,
    @Default(QuestionsBookmarkModel()) QuestionsBookmarkModel bookmarkQuestions,
  }) = _BookmarkQuestionsState;
}

