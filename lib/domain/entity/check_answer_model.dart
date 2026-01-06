import 'package:equatable/equatable.dart';
import 'package:testabd/data/remote_source/quiz/models/answer_response.dart';

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

  static CheckAnswerModel fromResponse(AnswerResponse response) {
    return CheckAnswerModel(
      id: response.id,
      questionId: response.questionId,
      writtenAnswer: response.writtenAnswer,
      isCorrect: response.isCorrect,
      duration: response.duration,
      feedback: response.feedback,
      createdAt: response.createdAt,
    );
  }

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
