import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';
import 'package:testabd/features/user_profile/user_profile_state.dart';
import 'package:testabd/main.dart';

@injectable
class UserProfileCubit extends Cubit<UserProfileState> {
  final AccountRepository _accountRepository;
  final QuizRepository _quizRepository;
  final String username;

  final int _pageSize = 10;

  @factoryMethod
  UserProfileCubit.create(
    @factoryParam this.username,
    this._accountRepository,
    this._quizRepository,
  ) : super(UserProfileState()) {
    logger.d(username);
  }

  Future<void> loadUserDetail() async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _accountRepository.getUserProfile(username);
    result.fold(
      (error) {
        logger.e('Error:$error');
        emit(state.copyWith(isLoading: false, error: error.message));
      },
      (value) {
        logger.d('Loaded: $value');
        emit(state.copyWith(isLoading: false, profile: value));

        /// load topics
        loadBlocks();
        loadQuestions();
      },
    );
  }

  Future<void> loadBlocks() async {
    final userId = state.profile?.user?.id;
    if (userId == null) return;
    if (state.topicsState.isLoading || state.topicsState.isLoadingMore) return;

    final currentPage = state.topicsState.nextPage;

    emit(
      state.copyWith(
        topicsState: state.topicsState.copyWith(
          isLoading: currentPage <= 1,
          isLoadingMore: currentPage > 1,
        ),
      ),
    );
    final result = await _quizRepository.getTopics(
      userId,
      pageSize: _pageSize,
      page: currentPage,
    );
    result.fold(
      (error) {
        final newTopicState = state.topicsState.copyWith(
          isLoading: false,
          isLoadingMore: false,
        );
        emit(state.copyWith(topicsState: newTopicState, error: error.message));
      },
      (value) {
        final newTopicState = state.topicsState.copyWith(
          topics: [...state.topicsState.topics, ...value.results],
          nextPage: currentPage + 1,
          previousPage: currentPage > 1 ? currentPage - 1 : 0,
          isLoading: false,
          isLoadingMore: false,
        );
        emit(state.copyWith(topicsState: newTopicState));
      },
    );
  }

  Future<void> loadQuestions() async {
    final userId = state.profile?.user?.id;
    if (userId == null) return;

    final questionsState = state.questionsState;
    if (questionsState.isLoading) return;

    emit(
      state.copyWith(questionsState: questionsState.copyWith(isLoading: true)),
    );
    final result = await _quizRepository.getUserQuestions(userId);
    result.fold(
      (error) {
        final newQuestionsState = questionsState.copyWith(
          isLoading: false,
          error: error.message,
        );
        emit(state.copyWith(questionsState: newQuestionsState));
      },
      (value) {
        final newQuestionsState = questionsState.copyWith(
          questions: value,
          error: null,
          isLoading: false,
        );
        emit(state.copyWith(questionsState: newQuestionsState));
      },
    );
  }

  Future<void> followAction() async {
    // todo do follow action
  }
}
