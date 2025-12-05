// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followed_questions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowedQuestionsResponse _$FollowedQuestionsResponseFromJson(
    Map<String, dynamic> json) {
  return _FollowedQuestionsResponse.fromJson(json);
}

/// @nodoc
mixin _$FollowedQuestionsResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Question> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowedQuestionsResponseCopyWith<FollowedQuestionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowedQuestionsResponseCopyWith<$Res> {
  factory $FollowedQuestionsResponseCopyWith(FollowedQuestionsResponse value,
          $Res Function(FollowedQuestionsResponse) then) =
      _$FollowedQuestionsResponseCopyWithImpl<$Res, FollowedQuestionsResponse>;
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<Question> results});
}

/// @nodoc
class _$FollowedQuestionsResponseCopyWithImpl<$Res,
        $Val extends FollowedQuestionsResponse>
    implements $FollowedQuestionsResponseCopyWith<$Res> {
  _$FollowedQuestionsResponseCopyWithImpl(this._value, this._then);

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
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowedQuestionsResponseImplCopyWith<$Res>
    implements $FollowedQuestionsResponseCopyWith<$Res> {
  factory _$$FollowedQuestionsResponseImplCopyWith(
          _$FollowedQuestionsResponseImpl value,
          $Res Function(_$FollowedQuestionsResponseImpl) then) =
      __$$FollowedQuestionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<Question> results});
}

/// @nodoc
class __$$FollowedQuestionsResponseImplCopyWithImpl<$Res>
    extends _$FollowedQuestionsResponseCopyWithImpl<$Res,
        _$FollowedQuestionsResponseImpl>
    implements _$$FollowedQuestionsResponseImplCopyWith<$Res> {
  __$$FollowedQuestionsResponseImplCopyWithImpl(
      _$FollowedQuestionsResponseImpl _value,
      $Res Function(_$FollowedQuestionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$FollowedQuestionsResponseImpl(
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
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowedQuestionsResponseImpl implements _FollowedQuestionsResponse {
  const _$FollowedQuestionsResponseImpl(
      {this.count,
      this.next,
      this.previous,
      final List<Question> results = const []})
      : _results = results;

  factory _$FollowedQuestionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowedQuestionsResponseImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Question> _results;
  @override
  @JsonKey()
  List<Question> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'FollowedQuestionsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowedQuestionsResponseImpl &&
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
  _$$FollowedQuestionsResponseImplCopyWith<_$FollowedQuestionsResponseImpl>
      get copyWith => __$$FollowedQuestionsResponseImplCopyWithImpl<
          _$FollowedQuestionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowedQuestionsResponseImplToJson(
      this,
    );
  }
}

abstract class _FollowedQuestionsResponse implements FollowedQuestionsResponse {
  const factory _FollowedQuestionsResponse(
      {final int? count,
      final String? next,
      final String? previous,
      final List<Question> results}) = _$FollowedQuestionsResponseImpl;

  factory _FollowedQuestionsResponse.fromJson(Map<String, dynamic> json) =
      _$FollowedQuestionsResponseImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Question> get results;
  @override
  @JsonKey(ignore: true)
  _$$FollowedQuestionsResponseImplCopyWith<_$FollowedQuestionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int? get id => throw _privateConstructorUsedError;
  int? get test => throw _privateConstructorUsedError;
  String? get test_title => throw _privateConstructorUsedError;
  String? get question_text => throw _privateConstructorUsedError;
  String? get question_type => throw _privateConstructorUsedError;
  int? get order_index => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;
  String? get test_description => throw _privateConstructorUsedError;
  String? get correct_answer_text => throw _privateConstructorUsedError;
  String? get answer_language => throw _privateConstructorUsedError;
  int? get correct_count => throw _privateConstructorUsedError;
  int? get wrong_count => throw _privateConstructorUsedError;
  double? get difficulty_percentage => throw _privateConstructorUsedError;
  int? get user_attempt_count => throw _privateConstructorUsedError;
  QuestionUser? get user => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get round_image => throw _privateConstructorUsedError;
  bool? get is_bookmarked => throw _privateConstructorUsedError;
  bool? get is_following => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int? id,
      int? test,
      String? test_title,
      String? question_text,
      String? question_type,
      int? order_index,
      String? media,
      List<Answer> answers,
      String? test_description,
      String? correct_answer_text,
      String? answer_language,
      int? correct_count,
      int? wrong_count,
      double? difficulty_percentage,
      int? user_attempt_count,
      QuestionUser? user,
      DateTime? created_at,
      String? round_image,
      bool? is_bookmarked,
      bool? is_following,
      int? category});

  $QuestionUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? test = freezed,
    Object? test_title = freezed,
    Object? question_text = freezed,
    Object? question_type = freezed,
    Object? order_index = freezed,
    Object? media = freezed,
    Object? answers = null,
    Object? test_description = freezed,
    Object? correct_answer_text = freezed,
    Object? answer_language = freezed,
    Object? correct_count = freezed,
    Object? wrong_count = freezed,
    Object? difficulty_percentage = freezed,
    Object? user_attempt_count = freezed,
    Object? user = freezed,
    Object? created_at = freezed,
    Object? round_image = freezed,
    Object? is_bookmarked = freezed,
    Object? is_following = freezed,
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
      test_title: freezed == test_title
          ? _value.test_title
          : test_title // ignore: cast_nullable_to_non_nullable
              as String?,
      question_text: freezed == question_text
          ? _value.question_text
          : question_text // ignore: cast_nullable_to_non_nullable
              as String?,
      question_type: freezed == question_type
          ? _value.question_type
          : question_type // ignore: cast_nullable_to_non_nullable
              as String?,
      order_index: freezed == order_index
          ? _value.order_index
          : order_index // ignore: cast_nullable_to_non_nullable
              as int?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      test_description: freezed == test_description
          ? _value.test_description
          : test_description // ignore: cast_nullable_to_non_nullable
              as String?,
      correct_answer_text: freezed == correct_answer_text
          ? _value.correct_answer_text
          : correct_answer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      answer_language: freezed == answer_language
          ? _value.answer_language
          : answer_language // ignore: cast_nullable_to_non_nullable
              as String?,
      correct_count: freezed == correct_count
          ? _value.correct_count
          : correct_count // ignore: cast_nullable_to_non_nullable
              as int?,
      wrong_count: freezed == wrong_count
          ? _value.wrong_count
          : wrong_count // ignore: cast_nullable_to_non_nullable
              as int?,
      difficulty_percentage: freezed == difficulty_percentage
          ? _value.difficulty_percentage
          : difficulty_percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      user_attempt_count: freezed == user_attempt_count
          ? _value.user_attempt_count
          : user_attempt_count // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QuestionUser?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      round_image: freezed == round_image
          ? _value.round_image
          : round_image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_bookmarked: freezed == is_bookmarked
          ? _value.is_bookmarked
          : is_bookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_following: freezed == is_following
          ? _value.is_following
          : is_following // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $QuestionUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? test,
      String? test_title,
      String? question_text,
      String? question_type,
      int? order_index,
      String? media,
      List<Answer> answers,
      String? test_description,
      String? correct_answer_text,
      String? answer_language,
      int? correct_count,
      int? wrong_count,
      double? difficulty_percentage,
      int? user_attempt_count,
      QuestionUser? user,
      DateTime? created_at,
      String? round_image,
      bool? is_bookmarked,
      bool? is_following,
      int? category});

  @override
  $QuestionUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? test = freezed,
    Object? test_title = freezed,
    Object? question_text = freezed,
    Object? question_type = freezed,
    Object? order_index = freezed,
    Object? media = freezed,
    Object? answers = null,
    Object? test_description = freezed,
    Object? correct_answer_text = freezed,
    Object? answer_language = freezed,
    Object? correct_count = freezed,
    Object? wrong_count = freezed,
    Object? difficulty_percentage = freezed,
    Object? user_attempt_count = freezed,
    Object? user = freezed,
    Object? created_at = freezed,
    Object? round_image = freezed,
    Object? is_bookmarked = freezed,
    Object? is_following = freezed,
    Object? category = freezed,
  }) {
    return _then(_$QuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      test_title: freezed == test_title
          ? _value.test_title
          : test_title // ignore: cast_nullable_to_non_nullable
              as String?,
      question_text: freezed == question_text
          ? _value.question_text
          : question_text // ignore: cast_nullable_to_non_nullable
              as String?,
      question_type: freezed == question_type
          ? _value.question_type
          : question_type // ignore: cast_nullable_to_non_nullable
              as String?,
      order_index: freezed == order_index
          ? _value.order_index
          : order_index // ignore: cast_nullable_to_non_nullable
              as int?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      test_description: freezed == test_description
          ? _value.test_description
          : test_description // ignore: cast_nullable_to_non_nullable
              as String?,
      correct_answer_text: freezed == correct_answer_text
          ? _value.correct_answer_text
          : correct_answer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      answer_language: freezed == answer_language
          ? _value.answer_language
          : answer_language // ignore: cast_nullable_to_non_nullable
              as String?,
      correct_count: freezed == correct_count
          ? _value.correct_count
          : correct_count // ignore: cast_nullable_to_non_nullable
              as int?,
      wrong_count: freezed == wrong_count
          ? _value.wrong_count
          : wrong_count // ignore: cast_nullable_to_non_nullable
              as int?,
      difficulty_percentage: freezed == difficulty_percentage
          ? _value.difficulty_percentage
          : difficulty_percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      user_attempt_count: freezed == user_attempt_count
          ? _value.user_attempt_count
          : user_attempt_count // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QuestionUser?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      round_image: freezed == round_image
          ? _value.round_image
          : round_image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_bookmarked: freezed == is_bookmarked
          ? _value.is_bookmarked
          : is_bookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_following: freezed == is_following
          ? _value.is_following
          : is_following // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {this.id,
      this.test,
      this.test_title,
      this.question_text,
      this.question_type,
      this.order_index,
      this.media,
      final List<Answer> answers = const [],
      this.test_description,
      this.correct_answer_text,
      this.answer_language,
      this.correct_count,
      this.wrong_count,
      this.difficulty_percentage,
      this.user_attempt_count,
      this.user,
      this.created_at,
      this.round_image,
      this.is_bookmarked,
      this.is_following,
      this.category})
      : _answers = answers;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final int? id;
  @override
  final int? test;
  @override
  final String? test_title;
  @override
  final String? question_text;
  @override
  final String? question_type;
  @override
  final int? order_index;
  @override
  final String? media;
  final List<Answer> _answers;
  @override
  @JsonKey()
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String? test_description;
  @override
  final String? correct_answer_text;
  @override
  final String? answer_language;
  @override
  final int? correct_count;
  @override
  final int? wrong_count;
  @override
  final double? difficulty_percentage;
  @override
  final int? user_attempt_count;
  @override
  final QuestionUser? user;
  @override
  final DateTime? created_at;
  @override
  final String? round_image;
  @override
  final bool? is_bookmarked;
  @override
  final bool? is_following;
  @override
  final int? category;

  @override
  String toString() {
    return 'Question(id: $id, test: $test, test_title: $test_title, question_text: $question_text, question_type: $question_type, order_index: $order_index, media: $media, answers: $answers, test_description: $test_description, correct_answer_text: $correct_answer_text, answer_language: $answer_language, correct_count: $correct_count, wrong_count: $wrong_count, difficulty_percentage: $difficulty_percentage, user_attempt_count: $user_attempt_count, user: $user, created_at: $created_at, round_image: $round_image, is_bookmarked: $is_bookmarked, is_following: $is_following, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.test_title, test_title) ||
                other.test_title == test_title) &&
            (identical(other.question_text, question_text) ||
                other.question_text == question_text) &&
            (identical(other.question_type, question_type) ||
                other.question_type == question_type) &&
            (identical(other.order_index, order_index) ||
                other.order_index == order_index) &&
            (identical(other.media, media) || other.media == media) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.test_description, test_description) ||
                other.test_description == test_description) &&
            (identical(other.correct_answer_text, correct_answer_text) ||
                other.correct_answer_text == correct_answer_text) &&
            (identical(other.answer_language, answer_language) ||
                other.answer_language == answer_language) &&
            (identical(other.correct_count, correct_count) ||
                other.correct_count == correct_count) &&
            (identical(other.wrong_count, wrong_count) ||
                other.wrong_count == wrong_count) &&
            (identical(other.difficulty_percentage, difficulty_percentage) ||
                other.difficulty_percentage == difficulty_percentage) &&
            (identical(other.user_attempt_count, user_attempt_count) ||
                other.user_attempt_count == user_attempt_count) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.round_image, round_image) ||
                other.round_image == round_image) &&
            (identical(other.is_bookmarked, is_bookmarked) ||
                other.is_bookmarked == is_bookmarked) &&
            (identical(other.is_following, is_following) ||
                other.is_following == is_following) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        test,
        test_title,
        question_text,
        question_type,
        order_index,
        media,
        const DeepCollectionEquality().hash(_answers),
        test_description,
        correct_answer_text,
        answer_language,
        correct_count,
        wrong_count,
        difficulty_percentage,
        user_attempt_count,
        user,
        created_at,
        round_image,
        is_bookmarked,
        is_following,
        category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {final int? id,
      final int? test,
      final String? test_title,
      final String? question_text,
      final String? question_type,
      final int? order_index,
      final String? media,
      final List<Answer> answers,
      final String? test_description,
      final String? correct_answer_text,
      final String? answer_language,
      final int? correct_count,
      final int? wrong_count,
      final double? difficulty_percentage,
      final int? user_attempt_count,
      final QuestionUser? user,
      final DateTime? created_at,
      final String? round_image,
      final bool? is_bookmarked,
      final bool? is_following,
      final int? category}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  int? get id;
  @override
  int? get test;
  @override
  String? get test_title;
  @override
  String? get question_text;
  @override
  String? get question_type;
  @override
  int? get order_index;
  @override
  String? get media;
  @override
  List<Answer> get answers;
  @override
  String? get test_description;
  @override
  String? get correct_answer_text;
  @override
  String? get answer_language;
  @override
  int? get correct_count;
  @override
  int? get wrong_count;
  @override
  double? get difficulty_percentage;
  @override
  int? get user_attempt_count;
  @override
  QuestionUser? get user;
  @override
  DateTime? get created_at;
  @override
  String? get round_image;
  @override
  bool? get is_bookmarked;
  @override
  bool? get is_following;
  @override
  int? get category;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int? get id => throw _privateConstructorUsedError;
  String? get letter => throw _privateConstructorUsedError;
  String? get answer_text => throw _privateConstructorUsedError;
  bool? get is_correct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({int? id, String? letter, String? answer_text, bool? is_correct});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? letter = freezed,
    Object? answer_text = freezed,
    Object? is_correct = freezed,
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
      answer_text: freezed == answer_text
          ? _value.answer_text
          : answer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      is_correct: freezed == is_correct
          ? _value.is_correct
          : is_correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? letter, String? answer_text, bool? is_correct});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? letter = freezed,
    Object? answer_text = freezed,
    Object? is_correct = freezed,
  }) {
    return _then(_$AnswerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      letter: freezed == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String?,
      answer_text: freezed == answer_text
          ? _value.answer_text
          : answer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      is_correct: freezed == is_correct
          ? _value.is_correct
          : is_correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl implements _Answer {
  const _$AnswerImpl({this.id, this.letter, this.answer_text, this.is_correct});

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? letter;
  @override
  final String? answer_text;
  @override
  final bool? is_correct;

  @override
  String toString() {
    return 'Answer(id: $id, letter: $letter, answer_text: $answer_text, is_correct: $is_correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.answer_text, answer_text) ||
                other.answer_text == answer_text) &&
            (identical(other.is_correct, is_correct) ||
                other.is_correct == is_correct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, letter, answer_text, is_correct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {final int? id,
      final String? letter,
      final String? answer_text,
      final bool? is_correct}) = _$AnswerImpl;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get letter;
  @override
  String? get answer_text;
  @override
  bool? get is_correct;
  @override
  @JsonKey(ignore: true)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionUser _$QuestionUserFromJson(Map<String, dynamic> json) {
  return _QuestionUser.fromJson(json);
}

/// @nodoc
mixin _$QuestionUser {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;
  bool? get is_badged => throw _privateConstructorUsedError;
  bool? get is_premium => throw _privateConstructorUsedError;
  bool? get is_following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionUserCopyWith<QuestionUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionUserCopyWith<$Res> {
  factory $QuestionUserCopyWith(
          QuestionUser value, $Res Function(QuestionUser) then) =
      _$QuestionUserCopyWithImpl<$Res, QuestionUser>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? profile_image,
      bool? is_badged,
      bool? is_premium,
      bool? is_following});
}

/// @nodoc
class _$QuestionUserCopyWithImpl<$Res, $Val extends QuestionUser>
    implements $QuestionUserCopyWith<$Res> {
  _$QuestionUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profile_image = freezed,
    Object? is_badged = freezed,
    Object? is_premium = freezed,
    Object? is_following = freezed,
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
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_badged: freezed == is_badged
          ? _value.is_badged
          : is_badged // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_premium: freezed == is_premium
          ? _value.is_premium
          : is_premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_following: freezed == is_following
          ? _value.is_following
          : is_following // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionUserImplCopyWith<$Res>
    implements $QuestionUserCopyWith<$Res> {
  factory _$$QuestionUserImplCopyWith(
          _$QuestionUserImpl value, $Res Function(_$QuestionUserImpl) then) =
      __$$QuestionUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? profile_image,
      bool? is_badged,
      bool? is_premium,
      bool? is_following});
}

/// @nodoc
class __$$QuestionUserImplCopyWithImpl<$Res>
    extends _$QuestionUserCopyWithImpl<$Res, _$QuestionUserImpl>
    implements _$$QuestionUserImplCopyWith<$Res> {
  __$$QuestionUserImplCopyWithImpl(
      _$QuestionUserImpl _value, $Res Function(_$QuestionUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profile_image = freezed,
    Object? is_badged = freezed,
    Object? is_premium = freezed,
    Object? is_following = freezed,
  }) {
    return _then(_$QuestionUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_badged: freezed == is_badged
          ? _value.is_badged
          : is_badged // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_premium: freezed == is_premium
          ? _value.is_premium
          : is_premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_following: freezed == is_following
          ? _value.is_following
          : is_following // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionUserImpl implements _QuestionUser {
  const _$QuestionUserImpl(
      {this.id,
      this.username,
      this.profile_image,
      this.is_badged,
      this.is_premium,
      this.is_following});

  factory _$QuestionUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionUserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? profile_image;
  @override
  final bool? is_badged;
  @override
  final bool? is_premium;
  @override
  final bool? is_following;

  @override
  String toString() {
    return 'QuestionUser(id: $id, username: $username, profile_image: $profile_image, is_badged: $is_badged, is_premium: $is_premium, is_following: $is_following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.is_badged, is_badged) ||
                other.is_badged == is_badged) &&
            (identical(other.is_premium, is_premium) ||
                other.is_premium == is_premium) &&
            (identical(other.is_following, is_following) ||
                other.is_following == is_following));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, profile_image,
      is_badged, is_premium, is_following);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionUserImplCopyWith<_$QuestionUserImpl> get copyWith =>
      __$$QuestionUserImplCopyWithImpl<_$QuestionUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionUserImplToJson(
      this,
    );
  }
}

abstract class _QuestionUser implements QuestionUser {
  const factory _QuestionUser(
      {final int? id,
      final String? username,
      final String? profile_image,
      final bool? is_badged,
      final bool? is_premium,
      final bool? is_following}) = _$QuestionUserImpl;

  factory _QuestionUser.fromJson(Map<String, dynamic> json) =
      _$QuestionUserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get profile_image;
  @override
  bool? get is_badged;
  @override
  bool? get is_premium;
  @override
  bool? get is_following;
  @override
  @JsonKey(ignore: true)
  _$$QuestionUserImplCopyWith<_$QuestionUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
