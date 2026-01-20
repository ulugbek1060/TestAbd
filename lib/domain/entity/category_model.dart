import 'package:equatable/equatable.dart';
import 'package:testabd/data/remote_source/quiz/models/category_response.dart';

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
    this.id,
    this.totalTests,
    this.totalQuestions,
    this.title,
    this.slug,
    this.description,
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

  static CategoryModel fromResponse(CategoryResponse response) {
    return CategoryModel(
      id: response.id,
      totalTests: response.totalQuestions,
      totalQuestions: response.totalQuestions,
      title: response.title,
      slug: response.slug,
      description: response.description,
      emoji: response.emoji,
      image: response.image,
    );
  }
}
