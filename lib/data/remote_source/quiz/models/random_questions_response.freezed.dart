// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_questions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RandomQuestionsResponse _$RandomQuestionsResponseFromJson(
    Map<String, dynamic> json) {
  return _RandomQuestionsResponse.fromJson(json);
}

/// @nodoc
mixin _$RandomQuestionsResponse {
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<RandomQuestionModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomQuestionsResponseCopyWith<RandomQuestionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomQuestionsResponseCopyWith<$Res> {
  factory $RandomQuestionsResponseCopyWith(RandomQuestionsResponse value,
          $Res Function(RandomQuestionsResponse) then) =
      _$RandomQuestionsResponseCopyWithImpl<$Res, RandomQuestionsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<RandomQuestionModel> results});
}

/// @nodoc
class _$RandomQuestionsResponseCopyWithImpl<$Res,
        $Val extends RandomQuestionsResponse>
    implements $RandomQuestionsResponseCopyWith<$Res> {
  _$RandomQuestionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RandomQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomQuestionsResponseImplCopyWith<$Res>
    implements $RandomQuestionsResponseCopyWith<$Res> {
  factory _$$RandomQuestionsResponseImplCopyWith(
          _$RandomQuestionsResponseImpl value,
          $Res Function(_$RandomQuestionsResponseImpl) then) =
      __$$RandomQuestionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<RandomQuestionModel> results});
}

/// @nodoc
class __$$RandomQuestionsResponseImplCopyWithImpl<$Res>
    extends _$RandomQuestionsResponseCopyWithImpl<$Res,
        _$RandomQuestionsResponseImpl>
    implements _$$RandomQuestionsResponseImplCopyWith<$Res> {
  __$$RandomQuestionsResponseImplCopyWithImpl(
      _$RandomQuestionsResponseImpl _value,
      $Res Function(_$RandomQuestionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$RandomQuestionsResponseImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RandomQuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomQuestionsResponseImpl implements _RandomQuestionsResponse {
  const _$RandomQuestionsResponseImpl(
      {@JsonKey(name: 'count') this.count,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'previous') this.previous,
      @JsonKey(name: 'results')
      final List<RandomQuestionModel> results = const []})
      : _results = results;

  factory _$RandomQuestionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomQuestionsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<RandomQuestionModel> _results;
  @override
  @JsonKey(name: 'results')
  List<RandomQuestionModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'RandomQuestionsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuestionsResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomQuestionsResponseImplCopyWith<_$RandomQuestionsResponseImpl>
      get copyWith => __$$RandomQuestionsResponseImplCopyWithImpl<
          _$RandomQuestionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomQuestionsResponseImplToJson(
      this,
    );
  }
}

abstract class _RandomQuestionsResponse implements RandomQuestionsResponse {
  const factory _RandomQuestionsResponse(
          {@JsonKey(name: 'count') final int? count,
          @JsonKey(name: 'next') final String? next,
          @JsonKey(name: 'previous') final String? previous,
          @JsonKey(name: 'results') final List<RandomQuestionModel> results}) =
      _$RandomQuestionsResponseImpl;

  factory _RandomQuestionsResponse.fromJson(Map<String, dynamic> json) =
      _$RandomQuestionsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'previous')
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<RandomQuestionModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$RandomQuestionsResponseImplCopyWith<_$RandomQuestionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RandomQuestionModel _$RandomQuestionModelFromJson(Map<String, dynamic> json) {
  return _RandomQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$RandomQuestionModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'test')
  int? get test => throw _privateConstructorUsedError;
  @JsonKey(name: 'test_title')
  String? get testTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_text')
  String? get questionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_type')
  String? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_index')
  int? get orderIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  String? get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<AnswerModel> get answers => throw _privateConstructorUsedError;
  @JsonKey(name: 'test_description')
  String? get testDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer_text')
  String? get correctAnswerText => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_language')
  String? get answerLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_count')
  int? get correctCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'wrong_count')
  int? get wrongCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_percentage')
  double? get difficultyPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_attempt_count')
  int? get userAttemptCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  QuestionUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'round_image')
  String? get roundImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bookmarked')
  bool? get isBookmarked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_following')
  bool? get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  Category? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomQuestionModelCopyWith<RandomQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomQuestionModelCopyWith<$Res> {
  factory $RandomQuestionModelCopyWith(
          RandomQuestionModel value, $Res Function(RandomQuestionModel) then) =
      _$RandomQuestionModelCopyWithImpl<$Res, RandomQuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'test') int? test,
      @JsonKey(name: 'test_title') String? testTitle,
      @JsonKey(name: 'question_text') String? questionText,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'order_index') int? orderIndex,
      @JsonKey(name: 'media') String? media,
      @JsonKey(name: 'answers') List<AnswerModel> answers,
      @JsonKey(name: 'test_description') String? testDescription,
      @JsonKey(name: 'correct_answer_text') String? correctAnswerText,
      @JsonKey(name: 'answer_language') String? answerLanguage,
      @JsonKey(name: 'correct_count') int? correctCount,
      @JsonKey(name: 'wrong_count') int? wrongCount,
      @JsonKey(name: 'difficulty_percentage') double? difficultyPercentage,
      @JsonKey(name: 'user_attempt_count') int? userAttemptCount,
      @JsonKey(name: 'user') QuestionUserModel? user,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'round_image') String? roundImage,
      @JsonKey(name: 'is_bookmarked') bool? isBookmarked,
      @JsonKey(name: 'is_following') bool? isFollowing,
      @JsonKey(name: 'category') Category? category});

  $QuestionUserModelCopyWith<$Res>? get user;
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$RandomQuestionModelCopyWithImpl<$Res, $Val extends RandomQuestionModel>
    implements $RandomQuestionModelCopyWith<$Res> {
  _$RandomQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? test = freezed,
    Object? testTitle = freezed,
    Object? questionText = freezed,
    Object? questionType = freezed,
    Object? orderIndex = freezed,
    Object? media = freezed,
    Object? answers = null,
    Object? testDescription = freezed,
    Object? correctAnswerText = freezed,
    Object? answerLanguage = freezed,
    Object? correctCount = freezed,
    Object? wrongCount = freezed,
    Object? difficultyPercentage = freezed,
    Object? userAttemptCount = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? roundImage = freezed,
    Object? isBookmarked = freezed,
    Object? isFollowing = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      testTitle: freezed == testTitle
          ? _value.testTitle
          : testTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderIndex: freezed == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      testDescription: freezed == testDescription
          ? _value.testDescription
          : testDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswerText: freezed == correctAnswerText
          ? _value.correctAnswerText
          : correctAnswerText // ignore: cast_nullable_to_non_nullable
              as String?,
      answerLanguage: freezed == answerLanguage
          ? _value.answerLanguage
          : answerLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      correctCount: freezed == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wrongCount: freezed == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as int?,
      difficultyPercentage: freezed == difficultyPercentage
          ? _value.difficultyPercentage
          : difficultyPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      userAttemptCount: freezed == userAttemptCount
          ? _value.userAttemptCount
          : userAttemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QuestionUserModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      roundImage: freezed == roundImage
          ? _value.roundImage
          : roundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $QuestionUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RandomQuestionModelImplCopyWith<$Res>
    implements $RandomQuestionModelCopyWith<$Res> {
  factory _$$RandomQuestionModelImplCopyWith(_$RandomQuestionModelImpl value,
          $Res Function(_$RandomQuestionModelImpl) then) =
      __$$RandomQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'test') int? test,
      @JsonKey(name: 'test_title') String? testTitle,
      @JsonKey(name: 'question_text') String? questionText,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'order_index') int? orderIndex,
      @JsonKey(name: 'media') String? media,
      @JsonKey(name: 'answers') List<AnswerModel> answers,
      @JsonKey(name: 'test_description') String? testDescription,
      @JsonKey(name: 'correct_answer_text') String? correctAnswerText,
      @JsonKey(name: 'answer_language') String? answerLanguage,
      @JsonKey(name: 'correct_count') int? correctCount,
      @JsonKey(name: 'wrong_count') int? wrongCount,
      @JsonKey(name: 'difficulty_percentage') double? difficultyPercentage,
      @JsonKey(name: 'user_attempt_count') int? userAttemptCount,
      @JsonKey(name: 'user') QuestionUserModel? user,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'round_image') String? roundImage,
      @JsonKey(name: 'is_bookmarked') bool? isBookmarked,
      @JsonKey(name: 'is_following') bool? isFollowing,
      @JsonKey(name: 'category') Category? category});

  @override
  $QuestionUserModelCopyWith<$Res>? get user;
  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$RandomQuestionModelImplCopyWithImpl<$Res>
    extends _$RandomQuestionModelCopyWithImpl<$Res, _$RandomQuestionModelImpl>
    implements _$$RandomQuestionModelImplCopyWith<$Res> {
  __$$RandomQuestionModelImplCopyWithImpl(_$RandomQuestionModelImpl _value,
      $Res Function(_$RandomQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? test = freezed,
    Object? testTitle = freezed,
    Object? questionText = freezed,
    Object? questionType = freezed,
    Object? orderIndex = freezed,
    Object? media = freezed,
    Object? answers = null,
    Object? testDescription = freezed,
    Object? correctAnswerText = freezed,
    Object? answerLanguage = freezed,
    Object? correctCount = freezed,
    Object? wrongCount = freezed,
    Object? difficultyPercentage = freezed,
    Object? userAttemptCount = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? roundImage = freezed,
    Object? isBookmarked = freezed,
    Object? isFollowing = freezed,
    Object? category = freezed,
  }) {
    return _then(_$RandomQuestionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      testTitle: freezed == testTitle
          ? _value.testTitle
          : testTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderIndex: freezed == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      testDescription: freezed == testDescription
          ? _value.testDescription
          : testDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswerText: freezed == correctAnswerText
          ? _value.correctAnswerText
          : correctAnswerText // ignore: cast_nullable_to_non_nullable
              as String?,
      answerLanguage: freezed == answerLanguage
          ? _value.answerLanguage
          : answerLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      correctCount: freezed == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wrongCount: freezed == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as int?,
      difficultyPercentage: freezed == difficultyPercentage
          ? _value.difficultyPercentage
          : difficultyPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      userAttemptCount: freezed == userAttemptCount
          ? _value.userAttemptCount
          : userAttemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QuestionUserModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      roundImage: freezed == roundImage
          ? _value.roundImage
          : roundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomQuestionModelImpl implements _RandomQuestionModel {
  const _$RandomQuestionModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'test') this.test,
      @JsonKey(name: 'test_title') this.testTitle,
      @JsonKey(name: 'question_text') this.questionText,
      @JsonKey(name: 'question_type') this.questionType,
      @JsonKey(name: 'order_index') this.orderIndex,
      @JsonKey(name: 'media') this.media,
      @JsonKey(name: 'answers') final List<AnswerModel> answers = const [],
      @JsonKey(name: 'test_description') this.testDescription,
      @JsonKey(name: 'correct_answer_text') this.correctAnswerText,
      @JsonKey(name: 'answer_language') this.answerLanguage,
      @JsonKey(name: 'correct_count') this.correctCount,
      @JsonKey(name: 'wrong_count') this.wrongCount,
      @JsonKey(name: 'difficulty_percentage') this.difficultyPercentage,
      @JsonKey(name: 'user_attempt_count') this.userAttemptCount,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'round_image') this.roundImage,
      @JsonKey(name: 'is_bookmarked') this.isBookmarked,
      @JsonKey(name: 'is_following') this.isFollowing,
      @JsonKey(name: 'category') this.category})
      : _answers = answers;

  factory _$RandomQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomQuestionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'test')
  final int? test;
  @override
  @JsonKey(name: 'test_title')
  final String? testTitle;
  @override
  @JsonKey(name: 'question_text')
  final String? questionText;
  @override
  @JsonKey(name: 'question_type')
  final String? questionType;
  @override
  @JsonKey(name: 'order_index')
  final int? orderIndex;
  @override
  @JsonKey(name: 'media')
  final String? media;
  final List<AnswerModel> _answers;
  @override
  @JsonKey(name: 'answers')
  List<AnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey(name: 'test_description')
  final String? testDescription;
  @override
  @JsonKey(name: 'correct_answer_text')
  final String? correctAnswerText;
  @override
  @JsonKey(name: 'answer_language')
  final String? answerLanguage;
  @override
  @JsonKey(name: 'correct_count')
  final int? correctCount;
  @override
  @JsonKey(name: 'wrong_count')
  final int? wrongCount;
  @override
  @JsonKey(name: 'difficulty_percentage')
  final double? difficultyPercentage;
  @override
  @JsonKey(name: 'user_attempt_count')
  final int? userAttemptCount;
  @override
  @JsonKey(name: 'user')
  final QuestionUserModel? user;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'round_image')
  final String? roundImage;
  @override
  @JsonKey(name: 'is_bookmarked')
  final bool? isBookmarked;
  @override
  @JsonKey(name: 'is_following')
  final bool? isFollowing;
  @override
  @JsonKey(name: 'category')
  final Category? category;

  @override
  String toString() {
    return 'RandomQuestionModel(id: $id, test: $test, testTitle: $testTitle, questionText: $questionText, questionType: $questionType, orderIndex: $orderIndex, media: $media, answers: $answers, testDescription: $testDescription, correctAnswerText: $correctAnswerText, answerLanguage: $answerLanguage, correctCount: $correctCount, wrongCount: $wrongCount, difficultyPercentage: $difficultyPercentage, userAttemptCount: $userAttemptCount, user: $user, createdAt: $createdAt, roundImage: $roundImage, isBookmarked: $isBookmarked, isFollowing: $isFollowing, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.testTitle, testTitle) ||
                other.testTitle == testTitle) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            (identical(other.media, media) || other.media == media) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.testDescription, testDescription) ||
                other.testDescription == testDescription) &&
            (identical(other.correctAnswerText, correctAnswerText) ||
                other.correctAnswerText == correctAnswerText) &&
            (identical(other.answerLanguage, answerLanguage) ||
                other.answerLanguage == answerLanguage) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount) &&
            (identical(other.wrongCount, wrongCount) ||
                other.wrongCount == wrongCount) &&
            (identical(other.difficultyPercentage, difficultyPercentage) ||
                other.difficultyPercentage == difficultyPercentage) &&
            (identical(other.userAttemptCount, userAttemptCount) ||
                other.userAttemptCount == userAttemptCount) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.roundImage, roundImage) ||
                other.roundImage == roundImage) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        test,
        testTitle,
        questionText,
        questionType,
        orderIndex,
        media,
        const DeepCollectionEquality().hash(_answers),
        testDescription,
        correctAnswerText,
        answerLanguage,
        correctCount,
        wrongCount,
        difficultyPercentage,
        userAttemptCount,
        user,
        createdAt,
        roundImage,
        isBookmarked,
        isFollowing,
        category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomQuestionModelImplCopyWith<_$RandomQuestionModelImpl> get copyWith =>
      __$$RandomQuestionModelImplCopyWithImpl<_$RandomQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _RandomQuestionModel implements RandomQuestionModel {
  const factory _RandomQuestionModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'test') final int? test,
          @JsonKey(name: 'test_title') final String? testTitle,
          @JsonKey(name: 'question_text') final String? questionText,
          @JsonKey(name: 'question_type') final String? questionType,
          @JsonKey(name: 'order_index') final int? orderIndex,
          @JsonKey(name: 'media') final String? media,
          @JsonKey(name: 'answers') final List<AnswerModel> answers,
          @JsonKey(name: 'test_description') final String? testDescription,
          @JsonKey(name: 'correct_answer_text') final String? correctAnswerText,
          @JsonKey(name: 'answer_language') final String? answerLanguage,
          @JsonKey(name: 'correct_count') final int? correctCount,
          @JsonKey(name: 'wrong_count') final int? wrongCount,
          @JsonKey(name: 'difficulty_percentage')
          final double? difficultyPercentage,
          @JsonKey(name: 'user_attempt_count') final int? userAttemptCount,
          @JsonKey(name: 'user') final QuestionUserModel? user,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'round_image') final String? roundImage,
          @JsonKey(name: 'is_bookmarked') final bool? isBookmarked,
          @JsonKey(name: 'is_following') final bool? isFollowing,
          @JsonKey(name: 'category') final Category? category}) =
      _$RandomQuestionModelImpl;

  factory _RandomQuestionModel.fromJson(Map<String, dynamic> json) =
      _$RandomQuestionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'test')
  int? get test;
  @override
  @JsonKey(name: 'test_title')
  String? get testTitle;
  @override
  @JsonKey(name: 'question_text')
  String? get questionText;
  @override
  @JsonKey(name: 'question_type')
  String? get questionType;
  @override
  @JsonKey(name: 'order_index')
  int? get orderIndex;
  @override
  @JsonKey(name: 'media')
  String? get media;
  @override
  @JsonKey(name: 'answers')
  List<AnswerModel> get answers;
  @override
  @JsonKey(name: 'test_description')
  String? get testDescription;
  @override
  @JsonKey(name: 'correct_answer_text')
  String? get correctAnswerText;
  @override
  @JsonKey(name: 'answer_language')
  String? get answerLanguage;
  @override
  @JsonKey(name: 'correct_count')
  int? get correctCount;
  @override
  @JsonKey(name: 'wrong_count')
  int? get wrongCount;
  @override
  @JsonKey(name: 'difficulty_percentage')
  double? get difficultyPercentage;
  @override
  @JsonKey(name: 'user_attempt_count')
  int? get userAttemptCount;
  @override
  @JsonKey(name: 'user')
  QuestionUserModel? get user;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'round_image')
  String? get roundImage;
  @override
  @JsonKey(name: 'is_bookmarked')
  bool? get isBookmarked;
  @override
  @JsonKey(name: 'is_following')
  bool? get isFollowing;
  @override
  @JsonKey(name: 'category')
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$RandomQuestionModelImplCopyWith<_$RandomQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'letter')
  String? get letter => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_text')
  String? get answerText => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  bool? get isCorrect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerModelCopyWith<AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerModelCopyWith<$Res> {
  factory $AnswerModelCopyWith(
          AnswerModel value, $Res Function(AnswerModel) then) =
      _$AnswerModelCopyWithImpl<$Res, AnswerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'letter') String? letter,
      @JsonKey(name: 'answer_text') String? answerText,
      @JsonKey(name: 'is_correct') bool? isCorrect});
}

/// @nodoc
class _$AnswerModelCopyWithImpl<$Res, $Val extends AnswerModel>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? letter = freezed,
    Object? answerText = freezed,
    Object? isCorrect = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      letter: freezed == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerModelImplCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$$AnswerModelImplCopyWith(
          _$AnswerModelImpl value, $Res Function(_$AnswerModelImpl) then) =
      __$$AnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'letter') String? letter,
      @JsonKey(name: 'answer_text') String? answerText,
      @JsonKey(name: 'is_correct') bool? isCorrect});
}

/// @nodoc
class __$$AnswerModelImplCopyWithImpl<$Res>
    extends _$AnswerModelCopyWithImpl<$Res, _$AnswerModelImpl>
    implements _$$AnswerModelImplCopyWith<$Res> {
  __$$AnswerModelImplCopyWithImpl(
      _$AnswerModelImpl _value, $Res Function(_$AnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? letter = freezed,
    Object? answerText = freezed,
    Object? isCorrect = freezed,
  }) {
    return _then(_$AnswerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      letter: freezed == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerModelImpl implements _AnswerModel {
  const _$AnswerModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'letter') this.letter,
      @JsonKey(name: 'answer_text') this.answerText,
      @JsonKey(name: 'is_correct') this.isCorrect});

  factory _$AnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'letter')
  final String? letter;
  @override
  @JsonKey(name: 'answer_text')
  final String? answerText;
  @override
  @JsonKey(name: 'is_correct')
  final bool? isCorrect;

  @override
  String toString() {
    return 'AnswerModel(id: $id, letter: $letter, answerText: $answerText, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, letter, answerText, isCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      __$$AnswerModelImplCopyWithImpl<_$AnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerModelImplToJson(
      this,
    );
  }
}

abstract class _AnswerModel implements AnswerModel {
  const factory _AnswerModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'letter') final String? letter,
      @JsonKey(name: 'answer_text') final String? answerText,
      @JsonKey(name: 'is_correct') final bool? isCorrect}) = _$AnswerModelImpl;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$AnswerModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'letter')
  String? get letter;
  @override
  @JsonKey(name: 'answer_text')
  String? get answerText;
  @override
  @JsonKey(name: 'is_correct')
  bool? get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionUserModel _$QuestionUserModelFromJson(Map<String, dynamic> json) {
  return _QuestionUserModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionUserModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_badged')
  bool? get isBadged => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_premium')
  bool? get isPremium => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_following')
  bool? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionUserModelCopyWith<QuestionUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionUserModelCopyWith<$Res> {
  factory $QuestionUserModelCopyWith(
          QuestionUserModel value, $Res Function(QuestionUserModel) then) =
      _$QuestionUserModelCopyWithImpl<$Res, QuestionUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'is_badged') bool? isBadged,
      @JsonKey(name: 'is_premium') bool? isPremium,
      @JsonKey(name: 'is_following') bool? isFollowing});
}

/// @nodoc
class _$QuestionUserModelCopyWithImpl<$Res, $Val extends QuestionUserModel>
    implements $QuestionUserModelCopyWith<$Res> {
  _$QuestionUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? isBadged = freezed,
    Object? isPremium = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBadged: freezed == isBadged
          ? _value.isBadged
          : isBadged // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionUserModelImplCopyWith<$Res>
    implements $QuestionUserModelCopyWith<$Res> {
  factory _$$QuestionUserModelImplCopyWith(_$QuestionUserModelImpl value,
          $Res Function(_$QuestionUserModelImpl) then) =
      __$$QuestionUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'is_badged') bool? isBadged,
      @JsonKey(name: 'is_premium') bool? isPremium,
      @JsonKey(name: 'is_following') bool? isFollowing});
}

/// @nodoc
class __$$QuestionUserModelImplCopyWithImpl<$Res>
    extends _$QuestionUserModelCopyWithImpl<$Res, _$QuestionUserModelImpl>
    implements _$$QuestionUserModelImplCopyWith<$Res> {
  __$$QuestionUserModelImplCopyWithImpl(_$QuestionUserModelImpl _value,
      $Res Function(_$QuestionUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? isBadged = freezed,
    Object? isPremium = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_$QuestionUserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBadged: freezed == isBadged
          ? _value.isBadged
          : isBadged // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionUserModelImpl implements _QuestionUserModel {
  const _$QuestionUserModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'is_badged') this.isBadged,
      @JsonKey(name: 'is_premium') this.isPremium,
      @JsonKey(name: 'is_following') this.isFollowing});

  factory _$QuestionUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'is_badged')
  final bool? isBadged;
  @override
  @JsonKey(name: 'is_premium')
  final bool? isPremium;
  @override
  @JsonKey(name: 'is_following')
  final bool? isFollowing;

  @override
  String toString() {
    return 'QuestionUserModel(id: $id, username: $username, profileImage: $profileImage, isBadged: $isBadged, isPremium: $isPremium, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isBadged, isBadged) ||
                other.isBadged == isBadged) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, profileImage,
      isBadged, isPremium, isFollowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionUserModelImplCopyWith<_$QuestionUserModelImpl> get copyWith =>
      __$$QuestionUserModelImplCopyWithImpl<_$QuestionUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionUserModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionUserModel implements QuestionUserModel {
  const factory _QuestionUserModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'profile_image') final String? profileImage,
          @JsonKey(name: 'is_badged') final bool? isBadged,
          @JsonKey(name: 'is_premium') final bool? isPremium,
          @JsonKey(name: 'is_following') final bool? isFollowing}) =
      _$QuestionUserModelImpl;

  factory _QuestionUserModel.fromJson(Map<String, dynamic> json) =
      _$QuestionUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'is_badged')
  bool? get isBadged;
  @override
  @JsonKey(name: 'is_premium')
  bool? get isPremium;
  @override
  @JsonKey(name: 'is_following')
  bool? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$$QuestionUserModelImplCopyWith<_$QuestionUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tests')
  int? get totalTests => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'emoji')
  String? get emoji => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_tests') int? totalTests,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'emoji') String? emoji,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalTests = freezed,
    Object? totalQuestions = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? emoji = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTests: freezed == totalTests
          ? _value.totalTests
          : totalTests // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_tests') int? totalTests,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'emoji') String? emoji,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalTests = freezed,
    Object? totalQuestions = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? emoji = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTests: freezed == totalTests
          ? _value.totalTests
          : totalTests // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'total_tests') this.totalTests,
      @JsonKey(name: 'total_questions') this.totalQuestions,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'emoji') this.emoji,
      @JsonKey(name: 'image') this.image});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'total_tests')
  final int? totalTests;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'emoji')
  final String? emoji;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'Category(id: $id, totalTests: $totalTests, totalQuestions: $totalQuestions, title: $title, slug: $slug, description: $description, emoji: $emoji, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalTests, totalTests) ||
                other.totalTests == totalTests) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, totalTests, totalQuestions,
      title, slug, description, emoji, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'total_tests') final int? totalTests,
      @JsonKey(name: 'total_questions') final int? totalQuestions,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'emoji') final String? emoji,
      @JsonKey(name: 'image') final String? image}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'total_tests')
  int? get totalTests;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'emoji')
  String? get emoji;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
