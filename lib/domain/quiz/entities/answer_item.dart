import 'package:equatable/equatable.dart';

class AnswerItem extends Equatable {
  final int? id;
  final String? letter;
  final String? answerText;
  final bool isCorrect;

  const AnswerItem({this.id, this.letter, this.answerText, this.isCorrect = false});

  @override
  List<Object?> get props => [id, letter, answerText, isCorrect];
}
