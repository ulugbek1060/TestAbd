import 'package:equatable/equatable.dart';

class AnswerItem extends Equatable {
  final int? id;
  final String? letter;
  final String? answerText;
  final bool isCorrect;
  final bool isLoading;

  const AnswerItem({
    this.id,
    this.letter,
    this.answerText,
    this.isCorrect = false,
    this.isLoading = false,
  });

  AnswerItem copyWith({
    int? id,
    String? letter,
    String? answerText,
    bool? isCorrect,
    bool? isLoading,
  }) {
    return AnswerItem(
      id: id ?? this.id,
      letter: letter ?? this.letter,
      answerText: answerText ?? this.answerText,
      isCorrect: isCorrect ?? this.isCorrect,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [id, letter, answerText, isCorrect, isLoading];
}
