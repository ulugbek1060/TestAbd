

import 'package:equatable/equatable.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';

class GlobalQuizModel extends Equatable {
  final int? count;
  final String? next;
  final String? previous;
  final List<QuizItem>? results;

  const GlobalQuizModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  @override
  List<Object?> get props => [count, next, previous, results];
}
