import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_questions_response.freezed.dart';
part 'random_questions_response.g.dart';

@freezed
class RandomQuestionsResponse with _$RandomQuestionsResponse {
  const factory RandomQuestionsResponse({
    @JsonKey(name: 'count')
    int? count,
    @JsonKey(name: 'next')
    String? next,
    @JsonKey(name: 'previous')
    String? previous,
    @JsonKey(name: 'results')
    @Default([]) List<RandomQuestionModel> results,
  }) = _RandomQuestionsResponse;

  factory RandomQuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomQuestionsResponseFromJson(json);
}

@freezed
class RandomQuestionModel with _$RandomQuestionModel {
  const factory RandomQuestionModel({
    @JsonKey(name: 'id')
    int? id,
    @JsonKey(name: 'test')
    int? test,
    @JsonKey(name: 'test_title')
    String? testTitle,
    @JsonKey(name: 'question_text')
    String? questionText,
    @JsonKey(name: 'question_type')
    String? questionType,
    @JsonKey(name: 'order_index')
    int? orderIndex,
    @JsonKey(name: 'media')
    String? media,
    @JsonKey(name: 'answers') @Default([]) List<AnswerModel> answers,
    @JsonKey(name: 'test_description')
    String? testDescription,
    @JsonKey(name: 'correct_answer_text')
    String? correctAnswerText,
    @JsonKey(name: 'answer_language')
    String? answerLanguage,
    @JsonKey(name: 'correct_count')
    int? correctCount,
    @JsonKey(name: 'wrong_count')
    int? wrongCount,
    @JsonKey(name: 'difficulty_percentage')
    double? difficultyPercentage,
    @JsonKey(name: 'user_attempt_count')
    int? userAttemptCount,
    @JsonKey(name: 'user')
    QuestionUserModel? user,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'round_image')
    String? roundImage,
    @JsonKey(name: 'is_bookmarked')
    bool? isBookmarked,
    @JsonKey(name: 'is_following')
    bool? isFollowing,
    @JsonKey(name: 'category')
    Category? category,
  }) = _RandomQuestionModel;

  factory RandomQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$RandomQuestionModelFromJson(json);
}

@freezed
class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    @JsonKey(name: 'id')
    int? id,
    @JsonKey(name: 'letter')
    String? letter,
    @JsonKey(name: 'answer_text')
    String? answerText,
    @JsonKey(name: 'is_correct')
    bool? isCorrect,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}

@freezed
class QuestionUserModel with _$QuestionUserModel {
  const factory QuestionUserModel({
    @JsonKey(name: 'id')
    int? id,
    @JsonKey(name: 'username')
    String? username,
    @JsonKey(name: 'profile_image')
    String? profileImage,
    @JsonKey(name: 'is_badged')
    bool? isBadged,
    @JsonKey(name: 'is_premium')
    bool? isPremium,
    @JsonKey(name: 'is_following')
    bool? isFollowing,
  }) = _QuestionUserModel;

  factory QuestionUserModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionUserModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: 'id')
    int? id,
    @JsonKey(name: 'total_tests')
    int? totalTests,
    @JsonKey(name: 'total_questions')
    int? totalQuestions,
    @JsonKey(name: 'title')
    String? title,
    @JsonKey(name: 'slug')
    String? slug,
    @JsonKey(name: 'description')
    String? description,
    @JsonKey(name: 'emoji')
    String? emoji,
    @JsonKey(name: 'image')
    String? image,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
