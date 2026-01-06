import 'package:equatable/equatable.dart';
import 'package:testabd/domain/entity/category_model.dart';

class QuestionDetailModel with EquatableMixin {
  final int? id;
  final String? questionText;
  final String? questionType;
  final double? difficultyPercentage;
  final DateTime? createdAt;
  final String? testTitle;
  final CategoryModel? category;

  const QuestionDetailModel({
    required this.id,
    required this.questionText,
    required this.questionType,
    required this.difficultyPercentage,
    required this.createdAt,
    required this.testTitle,
    required this.category,
  });

  @override
  List<Object?> get props => [
    id,
    questionText,
    questionType,
    difficultyPercentage,
    createdAt,
    testTitle,
    category,
  ];
}
