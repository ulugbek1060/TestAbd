
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/entity/category_model.dart';

part 'create_question_state.freezed.dart';

@freezed
abstract class CreateQuestionState with _$CreateQuestionState {
  const factory CreateQuestionState({
    @Default(false) bool isLoading,
    String? error,
    @Default([]) List<CategoryModel> categories,
  }) = _CreateQuestionState;
}