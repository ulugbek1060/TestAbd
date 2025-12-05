// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followed_quiz_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowedQuizResponse _$FollowedQuizResponseFromJson(Map<String, dynamic> json) {
  return _FollowedQuizResponse.fromJson(json);
}

/// @nodoc
mixin _$FollowedQuizResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<FollowedQuizItem> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowedQuizResponseCopyWith<FollowedQuizResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowedQuizResponseCopyWith<$Res> {
  factory $FollowedQuizResponseCopyWith(FollowedQuizResponse value,
          $Res Function(FollowedQuizResponse) then) =
      _$FollowedQuizResponseCopyWithImpl<$Res, FollowedQuizResponse>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<FollowedQuizItem> results});
}

/// @nodoc
class _$FollowedQuizResponseCopyWithImpl<$Res,
        $Val extends FollowedQuizResponse>
    implements $FollowedQuizResponseCopyWith<$Res> {
  _$FollowedQuizResponseCopyWithImpl(this._value, this._then);

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
              as List<FollowedQuizItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowedQuizResponseImplCopyWith<$Res>
    implements $FollowedQuizResponseCopyWith<$Res> {
  factory _$$FollowedQuizResponseImplCopyWith(_$FollowedQuizResponseImpl value,
          $Res Function(_$FollowedQuizResponseImpl) then) =
      __$$FollowedQuizResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<FollowedQuizItem> results});
}

/// @nodoc
class __$$FollowedQuizResponseImplCopyWithImpl<$Res>
    extends _$FollowedQuizResponseCopyWithImpl<$Res, _$FollowedQuizResponseImpl>
    implements _$$FollowedQuizResponseImplCopyWith<$Res> {
  __$$FollowedQuizResponseImplCopyWithImpl(_$FollowedQuizResponseImpl _value,
      $Res Function(_$FollowedQuizResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$FollowedQuizResponseImpl(
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
              as List<FollowedQuizItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowedQuizResponseImpl implements _FollowedQuizResponse {
  const _$FollowedQuizResponseImpl(
      {this.count,
      this.next,
      this.previous,
      final List<FollowedQuizItem> results = const []})
      : _results = results;

  factory _$FollowedQuizResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowedQuizResponseImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<FollowedQuizItem> _results;
  @override
  @JsonKey()
  List<FollowedQuizItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'FollowedQuizResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowedQuizResponseImpl &&
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
  _$$FollowedQuizResponseImplCopyWith<_$FollowedQuizResponseImpl>
      get copyWith =>
          __$$FollowedQuizResponseImplCopyWithImpl<_$FollowedQuizResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowedQuizResponseImplToJson(
      this,
    );
  }
}

abstract class _FollowedQuizResponse implements FollowedQuizResponse {
  const factory _FollowedQuizResponse(
      {final int? count,
      final String? next,
      final String? previous,
      final List<FollowedQuizItem> results}) = _$FollowedQuizResponseImpl;

  factory _FollowedQuizResponse.fromJson(Map<String, dynamic> json) =
      _$FollowedQuizResponseImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<FollowedQuizItem> get results;
  @override
  @JsonKey(ignore: true)
  _$$FollowedQuizResponseImplCopyWith<_$FollowedQuizResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FollowedQuizItem _$FollowedQuizItemFromJson(Map<String, dynamic> json) {
  return _FollowedQuizItem.fromJson(json);
}

/// @nodoc
mixin _$FollowedQuizItem {
  int? get id => throw _privateConstructorUsedError;
  int? get test => throw _privateConstructorUsedError;
  String? get testTitle => throw _privateConstructorUsedError;
  String? get questionText => throw _privateConstructorUsedError;
  String? get questionType => throw _privateConstructorUsedError;
  int? get orderIndex => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  List<AnswerModel> get answers => throw _privateConstructorUsedError;
  String? get testDescription => throw _privateConstructorUsedError;
  String? get correctAnswerText => throw _privateConstructorUsedError;
  String? get answerLanguage => throw _privateConstructorUsedError;
  String? get correctCount => throw _privateConstructorUsedError;
  String? get wrongCount => throw _privateConstructorUsedError;
  double? get difficultyPercentage => throw _privateConstructorUsedError;
  String? get userAttemptCount => throw _privateConstructorUsedError;
  FollowUser? get user => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get roundImage => throw _privateConstructorUsedError;
  String? get isBookmarked => throw _privateConstructorUsedError;
  String? get isFollowing => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowedQuizItemCopyWith<FollowedQuizItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowedQuizItemCopyWith<$Res> {
  factory $FollowedQuizItemCopyWith(
          FollowedQuizItem value, $Res Function(FollowedQuizItem) then) =
      _$FollowedQuizItemCopyWithImpl<$Res, FollowedQuizItem>;
  @useResult
  $Res call(
      {int? id,
      int? test,
      String? testTitle,
      String? questionText,
      String? questionType,
      int? orderIndex,
      String? media,
      List<AnswerModel> answers,
      String? testDescription,
      String? correctAnswerText,
      String? answerLanguage,
      String? correctCount,
      String? wrongCount,
      double? difficultyPercentage,
      String? userAttemptCount,
      FollowUser? user,
      DateTime? createdAt,
      String? roundImage,
      String? isBookmarked,
      String? isFollowing,
      int? category});

  $FollowUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FollowedQuizItemCopyWithImpl<$Res, $Val extends FollowedQuizItem>
    implements $FollowedQuizItemCopyWith<$Res> {
  _$FollowedQuizItemCopyWithImpl(this._value, this._then);

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
              as String?,
      wrongCount: freezed == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as String?,
      difficultyPercentage: freezed == difficultyPercentage
          ? _value.difficultyPercentage
          : difficultyPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      userAttemptCount: freezed == userAttemptCount
          ? _value.userAttemptCount
          : userAttemptCount // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FollowUser?,
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
              as String?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FollowUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowedQuizItemImplCopyWith<$Res>
    implements $FollowedQuizItemCopyWith<$Res> {
  factory _$$FollowedQuizItemImplCopyWith(_$FollowedQuizItemImpl value,
          $Res Function(_$FollowedQuizItemImpl) then) =
      __$$FollowedQuizItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? test,
      String? testTitle,
      String? questionText,
      String? questionType,
      int? orderIndex,
      String? media,
      List<AnswerModel> answers,
      String? testDescription,
      String? correctAnswerText,
      String? answerLanguage,
      String? correctCount,
      String? wrongCount,
      double? difficultyPercentage,
      String? userAttemptCount,
      FollowUser? user,
      DateTime? createdAt,
      String? roundImage,
      String? isBookmarked,
      String? isFollowing,
      int? category});

  @override
  $FollowUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FollowedQuizItemImplCopyWithImpl<$Res>
    extends _$FollowedQuizItemCopyWithImpl<$Res, _$FollowedQuizItemImpl>
    implements _$$FollowedQuizItemImplCopyWith<$Res> {
  __$$FollowedQuizItemImplCopyWithImpl(_$FollowedQuizItemImpl _value,
      $Res Function(_$FollowedQuizItemImpl) _then)
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
    return _then(_$FollowedQuizItemImpl(
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
              as String?,
      wrongCount: freezed == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as String?,
      difficultyPercentage: freezed == difficultyPercentage
          ? _value.difficultyPercentage
          : difficultyPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      userAttemptCount: freezed == userAttemptCount
          ? _value.userAttemptCount
          : userAttemptCount // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FollowUser?,
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
              as String?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowedQuizItemImpl implements _FollowedQuizItem {
  const _$FollowedQuizItemImpl(
      {this.id,
      this.test,
      this.testTitle,
      this.questionText,
      this.questionType,
      this.orderIndex,
      this.media,
      final List<AnswerModel> answers = const [],
      this.testDescription,
      this.correctAnswerText,
      this.answerLanguage,
      this.correctCount,
      this.wrongCount,
      this.difficultyPercentage,
      this.userAttemptCount,
      this.user,
      this.createdAt,
      this.roundImage,
      this.isBookmarked,
      this.isFollowing,
      this.category})
      : _answers = answers;

  factory _$FollowedQuizItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowedQuizItemImplFromJson(json);

  @override
  final int? id;
  @override
  final int? test;
  @override
  final String? testTitle;
  @override
  final String? questionText;
  @override
  final String? questionType;
  @override
  final int? orderIndex;
  @override
  final String? media;
  final List<AnswerModel> _answers;
  @override
  @JsonKey()
  List<AnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String? testDescription;
  @override
  final String? correctAnswerText;
  @override
  final String? answerLanguage;
  @override
  final String? correctCount;
  @override
  final String? wrongCount;
  @override
  final double? difficultyPercentage;
  @override
  final String? userAttemptCount;
  @override
  final FollowUser? user;
  @override
  final DateTime? createdAt;
  @override
  final String? roundImage;
  @override
  final String? isBookmarked;
  @override
  final String? isFollowing;
  @override
  final int? category;

  @override
  String toString() {
    return 'FollowedQuizItem(id: $id, test: $test, testTitle: $testTitle, questionText: $questionText, questionType: $questionType, orderIndex: $orderIndex, media: $media, answers: $answers, testDescription: $testDescription, correctAnswerText: $correctAnswerText, answerLanguage: $answerLanguage, correctCount: $correctCount, wrongCount: $wrongCount, difficultyPercentage: $difficultyPercentage, userAttemptCount: $userAttemptCount, user: $user, createdAt: $createdAt, roundImage: $roundImage, isBookmarked: $isBookmarked, isFollowing: $isFollowing, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowedQuizItemImpl &&
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
  _$$FollowedQuizItemImplCopyWith<_$FollowedQuizItemImpl> get copyWith =>
      __$$FollowedQuizItemImplCopyWithImpl<_$FollowedQuizItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowedQuizItemImplToJson(
      this,
    );
  }
}

abstract class _FollowedQuizItem implements FollowedQuizItem {
  const factory _FollowedQuizItem(
      {final int? id,
      final int? test,
      final String? testTitle,
      final String? questionText,
      final String? questionType,
      final int? orderIndex,
      final String? media,
      final List<AnswerModel> answers,
      final String? testDescription,
      final String? correctAnswerText,
      final String? answerLanguage,
      final String? correctCount,
      final String? wrongCount,
      final double? difficultyPercentage,
      final String? userAttemptCount,
      final FollowUser? user,
      final DateTime? createdAt,
      final String? roundImage,
      final String? isBookmarked,
      final String? isFollowing,
      final int? category}) = _$FollowedQuizItemImpl;

  factory _FollowedQuizItem.fromJson(Map<String, dynamic> json) =
      _$FollowedQuizItemImpl.fromJson;

  @override
  int? get id;
  @override
  int? get test;
  @override
  String? get testTitle;
  @override
  String? get questionText;
  @override
  String? get questionType;
  @override
  int? get orderIndex;
  @override
  String? get media;
  @override
  List<AnswerModel> get answers;
  @override
  String? get testDescription;
  @override
  String? get correctAnswerText;
  @override
  String? get answerLanguage;
  @override
  String? get correctCount;
  @override
  String? get wrongCount;
  @override
  double? get difficultyPercentage;
  @override
  String? get userAttemptCount;
  @override
  FollowUser? get user;
  @override
  DateTime? get createdAt;
  @override
  String? get roundImage;
  @override
  String? get isBookmarked;
  @override
  String? get isFollowing;
  @override
  int? get category;
  @override
  @JsonKey(ignore: true)
  _$$FollowedQuizItemImplCopyWith<_$FollowedQuizItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerModel {
  int? get id => throw _privateConstructorUsedError;
  String? get letter => throw _privateConstructorUsedError;
  String? get answerText => throw _privateConstructorUsedError;
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
  $Res call({int? id, String? letter, String? answerText, bool? isCorrect});
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
  $Res call({int? id, String? letter, String? answerText, bool? isCorrect});
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
      {this.id, this.letter, this.answerText, this.isCorrect});

  factory _$AnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? letter;
  @override
  final String? answerText;
  @override
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
      {final int? id,
      final String? letter,
      final String? answerText,
      final bool? isCorrect}) = _$AnswerModelImpl;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$AnswerModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get letter;
  @override
  String? get answerText;
  @override
  bool? get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowUser _$FollowUserFromJson(Map<String, dynamic> json) {
  return _FollowUser.fromJson(json);
}

/// @nodoc
mixin _$FollowUser {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  bool? get isBadged => throw _privateConstructorUsedError;
  bool? get isPremium => throw _privateConstructorUsedError;
  String? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowUserCopyWith<FollowUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowUserCopyWith<$Res> {
  factory $FollowUserCopyWith(
          FollowUser value, $Res Function(FollowUser) then) =
      _$FollowUserCopyWithImpl<$Res, FollowUser>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? profileImage,
      bool? isBadged,
      bool? isPremium,
      String? isFollowing});
}

/// @nodoc
class _$FollowUserCopyWithImpl<$Res, $Val extends FollowUser>
    implements $FollowUserCopyWith<$Res> {
  _$FollowUserCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowUserImplCopyWith<$Res>
    implements $FollowUserCopyWith<$Res> {
  factory _$$FollowUserImplCopyWith(
          _$FollowUserImpl value, $Res Function(_$FollowUserImpl) then) =
      __$$FollowUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? profileImage,
      bool? isBadged,
      bool? isPremium,
      String? isFollowing});
}

/// @nodoc
class __$$FollowUserImplCopyWithImpl<$Res>
    extends _$FollowUserCopyWithImpl<$Res, _$FollowUserImpl>
    implements _$$FollowUserImplCopyWith<$Res> {
  __$$FollowUserImplCopyWithImpl(
      _$FollowUserImpl _value, $Res Function(_$FollowUserImpl) _then)
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
    return _then(_$FollowUserImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowUserImpl implements _FollowUser {
  const _$FollowUserImpl(
      {this.id,
      this.username,
      this.profileImage,
      this.isBadged,
      this.isPremium,
      this.isFollowing});

  factory _$FollowUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowUserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? profileImage;
  @override
  final bool? isBadged;
  @override
  final bool? isPremium;
  @override
  final String? isFollowing;

  @override
  String toString() {
    return 'FollowUser(id: $id, username: $username, profileImage: $profileImage, isBadged: $isBadged, isPremium: $isPremium, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowUserImpl &&
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
  _$$FollowUserImplCopyWith<_$FollowUserImpl> get copyWith =>
      __$$FollowUserImplCopyWithImpl<_$FollowUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowUserImplToJson(
      this,
    );
  }
}

abstract class _FollowUser implements FollowUser {
  const factory _FollowUser(
      {final int? id,
      final String? username,
      final String? profileImage,
      final bool? isBadged,
      final bool? isPremium,
      final String? isFollowing}) = _$FollowUserImpl;

  factory _FollowUser.fromJson(Map<String, dynamic> json) =
      _$FollowUserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get profileImage;
  @override
  bool? get isBadged;
  @override
  bool? get isPremium;
  @override
  String? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$$FollowUserImplCopyWith<_$FollowUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
