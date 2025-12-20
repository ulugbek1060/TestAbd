import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/quiz/entities/check_answer_model.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';

import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final QuizRepository _quizRepository;
  final int _pageSize = 10;

  HomeCubit(this._quizRepository) : super(HomeState());

  // ---------------------------------------------------------------------------
  // Pagination
  // ---------------------------------------------------------------------------
  Future<void> loadQuiz() async {
    final followedQuizState = state.followedQuizStata;
    if (followedQuizState.isLoading || followedQuizState.isLastPage) return;

    emit(
      state.copyWith(
        followedQuizStata: followedQuizState.copyWith(isLoading: true),
      ),
    );

    final response = await _quizRepository.getFollowedQuestions(
      page: followedQuizState.nextPage,
      pageSize: _pageSize,
    );

    response.fold(
      (err) => emit(
        state.copyWith(
          followedQuizStata: followedQuizState.copyWith(
            isLoading: false,
            error: err.message,
          ),
        ),
      ),
      (data) {
        final fetched = data.results ?? [];
        final newFollowedState = followedQuizState.copyWith(
          isLoading: false,
          questions: [...followedQuizState.questions, ...fetched],
          isLastPage: fetched.length < _pageSize,
          nextPage: followedQuizState.nextPage + 1,
          previousPage: followedQuizState.nextPage > 1
              ? followedQuizState.nextPage - 1
              : 1,
          error: null,
        );
        emit(state.copyWith(followedQuizStata: newFollowedState));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Submit Answer (Single / Multiple)
  // ---------------------------------------------------------------------------

  Future<void> submitAnswer(int questionId, List<int> answers) async {
    final index = _findQuestionIndex(questionId);
    if (index == -1) return;

    _setQuestionLoading(index, answers, true);

    final result = await _quizRepository.submitAnswer(
      questionId: questionId,
      selectedAnswers: answers,
    );

    result.fold(
      (err) => _handleSubmitError(index, answers),
      (res) => _handleSubmitSuccess(index, answers, res),
    );
  }

  // ---------------------------------------------------------------------------
  // Local Update Methods
  // ---------------------------------------------------------------------------

  void setSingleAnswer(int? questionId, int? answerId) {
    if (questionId == null || answerId == null) return;

    _updateQuestion(questionId, (q) {
      final list = [answerId]; // for single answer – always only one selected
      return q.copyWith(myAnswersId: list);
    });
  }

  void setMultipleAnswer(int questionId, int answerId) {
    _updateQuestion(questionId, (q) {
      final list = List<int>.from(q.myAnswersId);

      list.contains(answerId) ? list.remove(answerId) : list.add(answerId);

      return q.copyWith(myAnswersId: list);
    });
  }

  // ---------------------------------------------------------------------------
  // Private Helpers
  // ---------------------------------------------------------------------------

  int _findQuestionIndex(int questionId) =>
      state.followedQuizStata.questions.indexWhere((e) => e.id == questionId);

  void _updateQuestion(int questionId, QuizItem Function(QuizItem) updateFn) {
    final index = _findQuestionIndex(questionId);
    if (index == -1) return;

    final updated = List.of(state.followedQuizStata.questions);
    updated[index] = updateFn(updated[index]);

    emit(
      state.copyWith(
        followedQuizStata: state.followedQuizStata.copyWith(questions: updated),
      ),
    );
  }

  void _setQuestionLoading(int index, List<int> answers, bool value) {
    final q = state.followedQuizStata.questions[index];

    final updatedAnswers = q.answers.map((a) {
      return answers.contains(a.id) ? a.copyWith(isLoading: value) : a;
    }).toList();

    final updated = q.copyWith(isLoading: value, answers: updatedAnswers);

    _replaceQuestion(index, updated);
  }

  void _replaceQuestion(int index, QuizItem updated) {
    final list = List.of(state.followedQuizStata.questions);
    list[index] = updated;
    emit(
      state.copyWith(
        followedQuizStata: state.followedQuizStata.copyWith(questions: list),
      ),
    );
  }

  // ---------------- SUBMIT RESULT HANDLING ----------------

  void _handleSubmitError(int index, List<int> answers) {
    _setQuestionLoading(index, answers, false);
  }

  void _handleSubmitSuccess(
    int index,
    List<int> answers,
    CheckAnswerModel response,
  ) {
    final q = state.followedQuizStata.questions[index];

    final updatedAnswers = q.answers.map((a) {
      return answers.contains(a.id) ? a.copyWith(isLoading: false) : a;
    }).toList();

    final updated = q.copyWith(
      isLoading: false,
      isCompleted: true,
      isCorrect: response.isCorrect,
      myAnswersId: answers,
      answers: updatedAnswers,
    );

    _replaceQuestion(index, updated);
  }
}
