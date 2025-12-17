

import 'package:equatable/equatable.dart';

class CheckAnswerModel extends Equatable {
  final int? id;
  final int? questionId;
  final String? writtenAnswer;
  final bool? isCorrect;
  final int? duration;
  final String? feedback;
  final String? createdAt;

  const CheckAnswerModel({
    this.id,
    this.questionId,
    this.writtenAnswer,
    this.isCorrect,
    this.duration,
    this.feedback,
    this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    questionId,
    writtenAnswer,
    isCorrect,
    duration,
    feedback,
    createdAt,
  ];
}
