import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';
import 'package:testabd/main.dart';

part 'followed_quiz_state.dart';

@injectable
class FollowedQuizCubit extends Cubit<FollowedQuizState> {
  final QuizRepository _quizRepository;
  final _pageSize = 10;

  FollowedQuizCubit(this._quizRepository) : super(FollowedQuizState());

  Future<void> refreshQuiz() async {}

  Future<void> bookmarkQuestion(int questionId) async {}

  Future<void> loadQuiz() async {
    if (state.isLoading || state.isLastPage) return;

    emit(state.copyWith(isLoading: true));

    final result = await _quizRepository.getFollowedQuestions(
      page: state.nextPage,
      pageSize: _pageSize,
    );

    result.fold(
      (error) {
        emit(state.copyWith(isLoading: false, error: error.message));
        logger.e(error.message);
      },
      (result) {
        emit(
          state.copyWith(
            isLoading: false,
            questions: [...state.questions, ...result.results ?? []],
            isLastPage: _pageSize > (result.results?.length ?? 0),
            nextPage: state.nextPage + 1,
            previousPage: state.nextPage > 1 ? state.nextPage - 1 : 1,
            error: null,
          ),
        );
        logger.d(result.results?.length);
      },
    );
  }

  Future<void> submitAnswer(int questionId, List<int>? answers) async {
    if (answers == null) return;

    final index = state.questions.indexWhere((e) => e.id == questionId);
    if (index == -1) return;

    final updated = List.of(state.questions);

    final question = updated[index];
    updated[index] = question.copyWith(isLoading: true);

    emit(state.copyWith(questions: updated));

    final result = await _quizRepository.submitAnswer(
      questionId: questionId,
      selectedAnswers: answers,
    );

    result.fold(
      (error) {
        final updatedError = List.of(state.questions);
        updatedError[index] = question.copyWith(isLoading: false);
        emit(state.copyWith(questions: updatedError));
      },
      (value) {
        final updatedSuccess = List.of(state.questions);
        updatedSuccess[index] = question.copyWith(
          isLoading: false,
          myAnswersId: answers,
          isCorrect: value.isCorrect,
          isCompleted: true,
        );
        emit(state.copyWith(questions: updatedSuccess));
      },
    );
  }

  void setAnswer(int? questionId, int? answerId) {
    final index = state.questions.indexWhere((e) => e.id == questionId);
    if (index == -1) return;
    final updated = List.of(state.questions);

    final question = updated[index];
    final answersList = List.of(question.myAnswersId);

    if (answersList.contains(answerId)) {
      answersList.remove(answerId);
    } else {
      answersList.add(answerId ?? -1);
    }

    final updatedQuestion = question.copyWith(myAnswersId: answersList);
    updated[index] = updatedQuestion;

    emit(state.copyWith(questions: updated));
  }
}
