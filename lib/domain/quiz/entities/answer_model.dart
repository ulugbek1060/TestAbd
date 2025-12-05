import 'package:equatable/equatable.dart';

class AnswerModel extends Equatable {
  final int? id;
  final String? letter;
  final String? answerText;
  final bool? isCorrect;

  const AnswerModel({this.id, this.letter, this.answerText, this.isCorrect});

  @override
  List<Object?> get props => [id, letter, answerText, isCorrect];
}
