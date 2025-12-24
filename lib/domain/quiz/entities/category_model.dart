
import 'package:equatable/equatable.dart';

class CategoryModel with EquatableMixin {
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

  // copyWith functions
  CategoryModel copyWith({
    int? id,
    int? totalTests,
    int? totalQuestions,
    String? title,
    String? slug,
    String? description,
    String? emoji,
    String? image,
  }){
    return CategoryModel(
      id: id ?? this.id,
      totalTests: totalTests ?? this.totalTests,
      totalQuestions: totalQuestions ?? this.totalQuestions,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      emoji: emoji ?? this.emoji,
      image: image ?? this.image,
    );
  }

  @override
  List<Object?> get props => [
    id,
    totalTests,
    totalQuestions,
    title,
    slug,
    description,
    emoji,
  ];
}