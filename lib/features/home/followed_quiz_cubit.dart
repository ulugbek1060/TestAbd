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
}
