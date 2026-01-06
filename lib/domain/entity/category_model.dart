import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final int? id;
  final int? totalTests;
  final int? totalQuestions;
  final String? title;
  final String? slug;
  final String? description;
  final String? emoji;
  final String? image;

  const CategoryModel({
    required this.id,
    required this.totalTests,
    required this.totalQuestions,
    required this.title,
    required this.slug,
    required this.description,
    this.emoji,
    this.image,
  });

  @override
  List<Object?> get props => [
    id,
    totalQuestions,
    totalTests,
    title,
    slug,
    emoji,
    image,
  ];

}
