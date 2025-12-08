import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/quiz/entities/answer_model.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';

part 'followed_quiz_state.dart';

@injectable
class FollowedQuizCubit extends Cubit<FollowedQuizState> {
  final QuizRepository _quizRepository;
  final int _pageSize = 10;

  FollowedQuizCubit(this._quizRepository) : super(FollowedQuizState());

  // ---------------------------------------------------------------------------
  // Pagination
  // ---------------------------------------------------------------------------
  Future<void> loadQuiz() async {
    if (state.isLoading || state.isLastPage) return;

    emit(state.copyWith(isLoading: true));

    final response = await _quizRepository.getFollowedQuestions(
      page: state.nextPage,
      pageSize: _pageSize,
    );

    response.fold(
      (err) => emit(state.copyWith(isLoading: false, error: err.message)),
      (data) {
        final fetched = data.results ?? [];

        emit(
          state.copyWith(
            isLoading: false,
            questions: [...state.questions, ...fetched],
            isLastPage: fetched.length < _pageSize,
            nextPage: state.nextPage + 1,
            previousPage: state.nextPage > 1 ? state.nextPage - 1 : 1,
            error: null,
          ),
        );
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
      state.questions.indexWhere((e) => e.id == questionId);

  void _updateQuestion(int questionId, QuizItem Function(QuizItem) updateFn) {
    final index = _findQuestionIndex(questionId);
    if (index == -1) return;

    final updated = List.of(state.questions);
    updated[index] = updateFn(updated[index]);

    emit(state.copyWith(questions: updated));
  }

  void _setQuestionLoading(int index, List<int> answers, bool value) {
    final q = state.questions[index];

    final updatedAnswers = q.answers.map((a) {
      return answers.contains(a.id) ? a.copyWith(isLoading: value) : a;
    }).toList();

    final updated = q.copyWith(isLoading: value, answers: updatedAnswers);

    _replaceQuestion(index, updated);
  }

  void _replaceQuestion(int index, QuizItem updated) {
    final list = List.of(state.questions);
    list[index] = updated;
    emit(state.copyWith(questions: list));
  }

  // ---------------- SUBMIT RESULT HANDLING ----------------

  void _handleSubmitError(int index, List<int> answers) {
    _setQuestionLoading(index, answers, false);
  }

  void _handleSubmitSuccess(
    int index,
    List<int> answers,
    AnswerModel response,
  ) {
    final q = state.questions[index];

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
