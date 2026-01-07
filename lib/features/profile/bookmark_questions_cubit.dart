import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';
import 'package:testabd/features/profile/bookmark_questions_state.dart';

@injectable
class BookmarkQuestionsCubit extends Cubit<BookmarkQuestionsState> {
  final QuizRepository _quizRepository;
  final AppMessageHandler _messageHandler;

  BookmarkQuestionsCubit(this._quizRepository, this._messageHandler)
    : super(BookmarkQuestionsState());

  Future<void> fetchQuestionsBookmarks() async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    final result = await _quizRepository.getQuestionsBookmark();
    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
        _messageHandler.handleDialog(error);
      },
      (value) {
        emit(state.copyWith(isLoading: false, bookmarkQuestions: value));
      },
    );
  }
}
