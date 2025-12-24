// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserQuestionResponse _$UserQuestionResponseFromJson(Map<String, dynamic> json) {
  return _UserQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$UserQuestionResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get test => throw _privateConstructorUsedError;
  String? get test_title => throw _privateConstructorUsedError;
  String? get question_text => throw _privateConstructorUsedError;
  String? get question_type => throw _privateConstructorUsedError;
  int? get order_index => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  List<UserAnswerResponse> get answers => throw _privateConstructorUsedError;
  String? get test_description => throw _privateConstructorUsedError;
  String? get correct_answer_text => throw _privateConstructorUsedError;
  String? get answer_language => throw _privateConstructorUsedError;
  int? get correct_count => throw _privateConstructorUsedError;
  int? get wrong_count => throw _privateConstructorUsedError;
  double? get difficulty_percentage => throw _privateConstructorUsedError;
  int? get user_attempt_count => throw _privateConstructorUsedError;
  UserShortResponse? get user => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get round_image => throw _privateConstructorUsedError;
  bool? get is_bookmarked => throw _privateConstructorUsedError;
  bool? get is_following => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserQuestionResponseCopyWith<UserQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserQuestionResponseCopyWith<$Res> {
  factory $UserQuestionResponseCopyWith(UserQuestionResponse value,
          $Res Function(UserQuestionResponse) then) =
      _$UserQuestionResponseCopyWithImpl<$Res, UserQuestionResponse>;
  @useResult
  $Res call(
      {int? id,
      int? test,
      String? test_title,
      String? question_text,
      String? question_type,
      int? order_index,
      String? media,
      List<UserAnswerResponse> answers,
      String? test_description,
      String? correct_answer_text,
      String? answer_language,
      int? correct_count,
      int? wrong_count,
      double? difficulty_percentage,
      int? user_attempt_count,
      UserShortResponse? user,
      String? created_at,
      String? round_image,
      bool? is_bookmarked,
      bool? is_following,
      Category? category});

  $UserShortResponseCopyWith<$Res>? get user;
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$UserQuestionResponseCopyWithImpl<$Res,
        $Val extends UserQuestionResponse>
    implements $UserQuestionResponseCopyWith<$Res> {
  _$UserQuestionResponseCopyWithImpl(this._value, this._then);

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
              as List<UserAnswerResponse>,
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
              as UserShortResponse?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserShortResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserShortResponseCopyWith<$Res>(_value.user!, (value) {
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
abstract class _$$UserQuestionResponseImplCopyWith<$Res>
    implements $UserQuestionResponseCopyWith<$Res> {
  factory _$$UserQuestionResponseImplCopyWith(_$UserQuestionResponseImpl value,
          $Res Function(_$UserQuestionResponseImpl) then) =
      __$$UserQuestionResponseImplCopyWithImpl<$Res>;
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
      List<UserAnswerResponse> answers,
      String? test_description,
      String? correct_answer_text,
      String? answer_language,
      int? correct_count,
      int? wrong_count,
      double? difficulty_percentage,
      int? user_attempt_count,
      UserShortResponse? user,
      String? created_at,
      String? round_image,
      bool? is_bookmarked,
      bool? is_following,
      Category? category});

  @override
  $UserShortResponseCopyWith<$Res>? get user;
  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$UserQuestionResponseImplCopyWithImpl<$Res>
    extends _$UserQuestionResponseCopyWithImpl<$Res, _$UserQuestionResponseImpl>
    implements _$$UserQuestionResponseImplCopyWith<$Res> {
  __$$UserQuestionResponseImplCopyWithImpl(_$UserQuestionResponseImpl _value,
      $Res Function(_$UserQuestionResponseImpl) _then)
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
    return _then(_$UserQuestionResponseImpl(
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
              as List<UserAnswerResponse>,
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
              as UserShortResponse?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserQuestionResponseImpl implements _UserQuestionResponse {
  const _$UserQuestionResponseImpl(
      {this.id,
      this.test,
      this.test_title,
      this.question_text,
      this.question_type,
      this.order_index,
      this.media,
      final List<UserAnswerResponse> answers = const [],
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

  factory _$UserQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserQuestionResponseImplFromJson(json);

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
  final List<UserAnswerResponse> _answers;
  @override
  @JsonKey()
  List<UserAnswerResponse> get answers {
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
  final UserShortResponse? user;
  @override
  final String? created_at;
  @override
  final String? round_image;
  @override
  final bool? is_bookmarked;
  @override
  final bool? is_following;
  @override
  final Category? category;

  @override
  String toString() {
    return 'UserQuestionResponse(id: $id, test: $test, test_title: $test_title, question_text: $question_text, question_type: $question_type, order_index: $order_index, media: $media, answers: $answers, test_description: $test_description, correct_answer_text: $correct_answer_text, answer_language: $answer_language, correct_count: $correct_count, wrong_count: $wrong_count, difficulty_percentage: $difficulty_percentage, user_attempt_count: $user_attempt_count, user: $user, created_at: $created_at, round_image: $round_image, is_bookmarked: $is_bookmarked, is_following: $is_following, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserQuestionResponseImpl &&
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
  _$$UserQuestionResponseImplCopyWith<_$UserQuestionResponseImpl>
      get copyWith =>
          __$$UserQuestionResponseImplCopyWithImpl<_$UserQuestionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserQuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _UserQuestionResponse implements UserQuestionResponse {
  const factory _UserQuestionResponse(
      {final int? id,
      final int? test,
      final String? test_title,
      final String? question_text,
      final String? question_type,
      final int? order_index,
      final String? media,
      final List<UserAnswerResponse> answers,
      final String? test_description,
      final String? correct_answer_text,
      final String? answer_language,
      final int? correct_count,
      final int? wrong_count,
      final double? difficulty_percentage,
      final int? user_attempt_count,
      final UserShortResponse? user,
      final String? created_at,
      final String? round_image,
      final bool? is_bookmarked,
      final bool? is_following,
      final Category? category}) = _$UserQuestionResponseImpl;

  factory _UserQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$UserQuestionResponseImpl.fromJson;

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
  List<UserAnswerResponse> get answers;
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
  UserShortResponse? get user;
  @override
  String? get created_at;
  @override
  String? get round_image;
  @override
  bool? get is_bookmarked;
  @override
  bool? get is_following;
  @override
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$UserQuestionResponseImplCopyWith<_$UserQuestionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int? get id => throw _privateConstructorUsedError;
  int? get total_tests => throw _privateConstructorUsedError;
  int? get total_questions => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get emoji => throw _privateConstructorUsedError;
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
      {int? id,
      int? total_tests,
      int? total_questions,
      String? title,
      String? slug,
      String? description,
      String? emoji,
      String? image});
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
    Object? total_tests = freezed,
    Object? total_questions = freezed,
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
      total_tests: freezed == total_tests
          ? _value.total_tests
          : total_tests // ignore: cast_nullable_to_non_nullable
              as int?,
      total_questions: freezed == total_questions
          ? _value.total_questions
          : total_questions // ignore: cast_nullable_to_non_nullable
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
      {int? id,
      int? total_tests,
      int? total_questions,
      String? title,
      String? slug,
      String? description,
      String? emoji,
      String? image});
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
    Object? total_tests = freezed,
    Object? total_questions = freezed,
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
      total_tests: freezed == total_tests
          ? _value.total_tests
          : total_tests // ignore: cast_nullable_to_non_nullable
              as int?,
      total_questions: freezed == total_questions
          ? _value.total_questions
          : total_questions // ignore: cast_nullable_to_non_nullable
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
      {this.id,
      this.total_tests,
      this.total_questions,
      this.title,
      this.slug,
      this.description,
      this.emoji,
      this.image});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final int? total_tests;
  @override
  final int? total_questions;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final String? emoji;
  @override
  final String? image;

  @override
  String toString() {
    return 'Category(id: $id, total_tests: $total_tests, total_questions: $total_questions, title: $title, slug: $slug, description: $description, emoji: $emoji, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total_tests, total_tests) ||
                other.total_tests == total_tests) &&
            (identical(other.total_questions, total_questions) ||
                other.total_questions == total_questions) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, total_tests, total_questions,
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
      {final int? id,
      final int? total_tests,
      final int? total_questions,
      final String? title,
      final String? slug,
      final String? description,
      final String? emoji,
      final String? image}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int? get id;
  @override
  int? get total_tests;
  @override
  int? get total_questions;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  String? get description;
  @override
  String? get emoji;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAnswerResponse _$UserAnswerResponseFromJson(Map<String, dynamic> json) {
  return _UserAnswerResponse.fromJson(json);
}

/// @nodoc
mixin _$UserAnswerResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get letter => throw _privateConstructorUsedError;
  String? get answer_text => throw _privateConstructorUsedError;
  bool? get is_correct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAnswerResponseCopyWith<UserAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnswerResponseCopyWith<$Res> {
  factory $UserAnswerResponseCopyWith(
          UserAnswerResponse value, $Res Function(UserAnswerResponse) then) =
      _$UserAnswerResponseCopyWithImpl<$Res, UserAnswerResponse>;
  @useResult
  $Res call({int? id, String? letter, String? answer_text, bool? is_correct});
}

/// @nodoc
class _$UserAnswerResponseCopyWithImpl<$Res, $Val extends UserAnswerResponse>
    implements $UserAnswerResponseCopyWith<$Res> {
  _$UserAnswerResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UserAnswerResponseImplCopyWith<$Res>
    implements $UserAnswerResponseCopyWith<$Res> {
  factory _$$UserAnswerResponseImplCopyWith(_$UserAnswerResponseImpl value,
          $Res Function(_$UserAnswerResponseImpl) then) =
      __$$UserAnswerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? letter, String? answer_text, bool? is_correct});
}

/// @nodoc
class __$$UserAnswerResponseImplCopyWithImpl<$Res>
    extends _$UserAnswerResponseCopyWithImpl<$Res, _$UserAnswerResponseImpl>
    implements _$$UserAnswerResponseImplCopyWith<$Res> {
  __$$UserAnswerResponseImplCopyWithImpl(_$UserAnswerResponseImpl _value,
      $Res Function(_$UserAnswerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? letter = freezed,
    Object? answer_text = freezed,
    Object? is_correct = freezed,
  }) {
    return _then(_$UserAnswerResponseImpl(
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
class _$UserAnswerResponseImpl implements _UserAnswerResponse {
  const _$UserAnswerResponseImpl(
      {this.id, this.letter, this.answer_text, this.is_correct});

  factory _$UserAnswerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAnswerResponseImplFromJson(json);

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
    return 'UserAnswerResponse(id: $id, letter: $letter, answer_text: $answer_text, is_correct: $is_correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAnswerResponseImpl &&
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
  _$$UserAnswerResponseImplCopyWith<_$UserAnswerResponseImpl> get copyWith =>
      __$$UserAnswerResponseImplCopyWithImpl<_$UserAnswerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAnswerResponseImplToJson(
      this,
    );
  }
}

abstract class _UserAnswerResponse implements UserAnswerResponse {
  const factory _UserAnswerResponse(
      {final int? id,
      final String? letter,
      final String? answer_text,
      final bool? is_correct}) = _$UserAnswerResponseImpl;

  factory _UserAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$UserAnswerResponseImpl.fromJson;

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
  _$$UserAnswerResponseImplCopyWith<_$UserAnswerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserShortResponse _$UserShortResponseFromJson(Map<String, dynamic> json) {
  return _UserShortResponse.fromJson(json);
}

/// @nodoc
mixin _$UserShortResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;
  bool? get is_badged => throw _privateConstructorUsedError;
  bool? get is_premium => throw _privateConstructorUsedError;
  bool? get is_following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserShortResponseCopyWith<UserShortResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserShortResponseCopyWith<$Res> {
  factory $UserShortResponseCopyWith(
          UserShortResponse value, $Res Function(UserShortResponse) then) =
      _$UserShortResponseCopyWithImpl<$Res, UserShortResponse>;
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
class _$UserShortResponseCopyWithImpl<$Res, $Val extends UserShortResponse>
    implements $UserShortResponseCopyWith<$Res> {
  _$UserShortResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UserShortResponseImplCopyWith<$Res>
    implements $UserShortResponseCopyWith<$Res> {
  factory _$$UserShortResponseImplCopyWith(_$UserShortResponseImpl value,
          $Res Function(_$UserShortResponseImpl) then) =
      __$$UserShortResponseImplCopyWithImpl<$Res>;
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
class __$$UserShortResponseImplCopyWithImpl<$Res>
    extends _$UserShortResponseCopyWithImpl<$Res, _$UserShortResponseImpl>
    implements _$$UserShortResponseImplCopyWith<$Res> {
  __$$UserShortResponseImplCopyWithImpl(_$UserShortResponseImpl _value,
      $Res Function(_$UserShortResponseImpl) _then)
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
    return _then(_$UserShortResponseImpl(
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
class _$UserShortResponseImpl implements _UserShortResponse {
  const _$UserShortResponseImpl(
      {this.id,
      this.username,
      this.profile_image,
      this.is_badged,
      this.is_premium,
      this.is_following});

  factory _$UserShortResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserShortResponseImplFromJson(json);

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
    return 'UserShortResponse(id: $id, username: $username, profile_image: $profile_image, is_badged: $is_badged, is_premium: $is_premium, is_following: $is_following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShortResponseImpl &&
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
  _$$UserShortResponseImplCopyWith<_$UserShortResponseImpl> get copyWith =>
      __$$UserShortResponseImplCopyWithImpl<_$UserShortResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserShortResponseImplToJson(
      this,
    );
  }
}

abstract class _UserShortResponse implements UserShortResponse {
  const factory _UserShortResponse(
      {final int? id,
      final String? username,
      final String? profile_image,
      final bool? is_badged,
      final bool? is_premium,
      final bool? is_following}) = _$UserShortResponseImpl;

  factory _UserShortResponse.fromJson(Map<String, dynamic> json) =
      _$UserShortResponseImpl.fromJson;

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
  _$$UserShortResponseImplCopyWith<_$UserShortResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
