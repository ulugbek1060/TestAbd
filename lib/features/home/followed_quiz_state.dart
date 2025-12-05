part of 'followed_quiz_cubit.dart';

class FollowedQuizState extends Equatable {
  final bool isLoading;
  final List<QuizItem> questions;
  final bool isLastPage;
  final int nextPage;
  final int previousPage;
  final String? error;

  const FollowedQuizState({
    this.isLoading = false,
    this.questions = const [],
    this.isLastPage = false,
    this.nextPage = 1,
    this.previousPage = 1,
    this.error,
  });

  FollowedQuizState copyWith({
    bool? isLoading,
    List<QuizItem>? questions,
    int? nextPage,
    int? previousPage,
    bool? isLastPage,
    String? error,
  }) {
    return FollowedQuizState(
      isLoading: isLoading ?? this.isLoading,
      questions: questions ?? this.questions,
      nextPage: nextPage ?? this.nextPage,
      previousPage: previousPage ?? this.previousPage,
      isLastPage: isLastPage ?? this.isLastPage,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    questions,
    nextPage,
    previousPage,
    isLastPage,
    error,
  ];
}
