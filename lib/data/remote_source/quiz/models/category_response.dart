import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const CategoryResponse._();

  const factory CategoryResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'total_tests') required String totalTests,
    @JsonKey(name: 'total_questions') required String totalQuestions,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'emoji') required String emoji,
    @JsonKey(name: 'image') required String image,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
