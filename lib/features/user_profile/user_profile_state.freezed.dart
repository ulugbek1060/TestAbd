// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlocksState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  List<TopicItem> get topics => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  int get previousPage => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlocksStateCopyWith<BlocksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocksStateCopyWith<$Res> {
  factory $BlocksStateCopyWith(
          BlocksState value, $Res Function(BlocksState) then) =
      _$BlocksStateCopyWithImpl<$Res, BlocksState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      List<TopicItem> topics,
      int nextPage,
      int previousPage,
      String? error});
}

/// @nodoc
class _$BlocksStateCopyWithImpl<$Res, $Val extends BlocksState>
    implements $BlocksStateCopyWith<$Res> {
  _$BlocksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? topics = null,
    Object? nextPage = null,
    Object? previousPage = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: null == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlocksStateImplCopyWith<$Res>
    implements $BlocksStateCopyWith<$Res> {
  factory _$$BlocksStateImplCopyWith(
          _$BlocksStateImpl value, $Res Function(_$BlocksStateImpl) then) =
      __$$BlocksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      List<TopicItem> topics,
      int nextPage,
      int previousPage,
      String? error});
}

/// @nodoc
class __$$BlocksStateImplCopyWithImpl<$Res>
    extends _$BlocksStateCopyWithImpl<$Res, _$BlocksStateImpl>
    implements _$$BlocksStateImplCopyWith<$Res> {
  __$$BlocksStateImplCopyWithImpl(
      _$BlocksStateImpl _value, $Res Function(_$BlocksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? topics = null,
    Object? nextPage = null,
    Object? previousPage = null,
    Object? error = freezed,
  }) {
    return _then(_$BlocksStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicItem>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: null == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BlocksStateImpl implements _BlocksState {
  const _$BlocksStateImpl(
      {this.isLoading = false,
      this.isLoadingMore = false,
      final List<TopicItem> topics = const [],
      this.nextPage = 1,
      this.previousPage = 0,
      this.error})
      : _topics = topics;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  final List<TopicItem> _topics;
  @override
  @JsonKey()
  List<TopicItem> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @JsonKey()
  final int nextPage;
  @override
  @JsonKey()
  final int previousPage;
  @override
  final String? error;

  @override
  String toString() {
    return 'BlocksState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, topics: $topics, nextPage: $nextPage, previousPage: $previousPage, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocksStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingMore,
      const DeepCollectionEquality().hash(_topics),
      nextPage,
      previousPage,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocksStateImplCopyWith<_$BlocksStateImpl> get copyWith =>
      __$$BlocksStateImplCopyWithImpl<_$BlocksStateImpl>(this, _$identity);
}

abstract class _BlocksState implements BlocksState {
  const factory _BlocksState(
      {final bool isLoading,
      final bool isLoadingMore,
      final List<TopicItem> topics,
      final int nextPage,
      final int previousPage,
      final String? error}) = _$BlocksStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  List<TopicItem> get topics;
  @override
  int get nextPage;
  @override
  int get previousPage;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$BlocksStateImplCopyWith<_$BlocksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<QuizItem> get questions => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionsStateCopyWith<QuestionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsStateCopyWith<$Res> {
  factory $QuestionsStateCopyWith(
          QuestionsState value, $Res Function(QuestionsState) then) =
      _$QuestionsStateCopyWithImpl<$Res, QuestionsState>;
  @useResult
  $Res call({bool isLoading, List<QuizItem> questions, String? error});
}

/// @nodoc
class _$QuestionsStateCopyWithImpl<$Res, $Val extends QuestionsState>
    implements $QuestionsStateCopyWith<$Res> {
  _$QuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? questions = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsStateImplCopyWith<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  factory _$$QuestionsStateImplCopyWith(_$QuestionsStateImpl value,
          $Res Function(_$QuestionsStateImpl) then) =
      __$$QuestionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<QuizItem> questions, String? error});
}

/// @nodoc
class __$$QuestionsStateImplCopyWithImpl<$Res>
    extends _$QuestionsStateCopyWithImpl<$Res, _$QuestionsStateImpl>
    implements _$$QuestionsStateImplCopyWith<$Res> {
  __$$QuestionsStateImplCopyWithImpl(
      _$QuestionsStateImpl _value, $Res Function(_$QuestionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? questions = null,
    Object? error = freezed,
  }) {
    return _then(_$QuestionsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$QuestionsStateImpl implements _QuestionsState {
  const _$QuestionsStateImpl(
      {this.isLoading = false,
      final List<QuizItem> questions = const [],
      this.error})
      : _questions = questions;

  @override
  @JsonKey()
  final bool isLoading;
  final List<QuizItem> _questions;
  @override
  @JsonKey()
  List<QuizItem> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'QuestionsState(isLoading: $isLoading, questions: $questions, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_questions), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      __$$QuestionsStateImplCopyWithImpl<_$QuestionsStateImpl>(
          this, _$identity);
}

abstract class _QuestionsState implements QuestionsState {
  const factory _QuestionsState(
      {final bool isLoading,
      final List<QuizItem> questions,
      final String? error}) = _$QuestionsStateImpl;

  @override
  bool get isLoading;
  @override
  List<QuizItem> get questions;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BooksState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksStateCopyWith<BooksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
  @useResult
  $Res call({bool isLoading, String? error});
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksStateImplCopyWith<$Res>
    implements $BooksStateCopyWith<$Res> {
  factory _$$BooksStateImplCopyWith(
          _$BooksStateImpl value, $Res Function(_$BooksStateImpl) then) =
      __$$BooksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error});
}

/// @nodoc
class __$$BooksStateImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksStateImpl>
    implements _$$BooksStateImplCopyWith<$Res> {
  __$$BooksStateImplCopyWithImpl(
      _$BooksStateImpl _value, $Res Function(_$BooksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$BooksStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BooksStateImpl implements _BooksState {
  const _$BooksStateImpl({this.isLoading = false, this.error});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'BooksState(isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksStateImplCopyWith<_$BooksStateImpl> get copyWith =>
      __$$BooksStateImplCopyWithImpl<_$BooksStateImpl>(this, _$identity);
}

abstract class _BooksState implements BooksState {
  const factory _BooksState({final bool isLoading, final String? error}) =
      _$BooksStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$BooksStateImplCopyWith<_$BooksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfileState {
// global loading
  bool get isLoading => throw _privateConstructorUsedError; // user profile
  UserProfileModel? get profile =>
      throw _privateConstructorUsedError; // global errors
  String? get error => throw _privateConstructorUsedError; // follow loading
  bool? get followLoading => throw _privateConstructorUsedError; // topics state
  BlocksState get topicsState =>
      throw _privateConstructorUsedError; // questions state
  QuestionsState get questionsState =>
      throw _privateConstructorUsedError; // book state
  BooksState get booksState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserProfileModel? profile,
      String? error,
      bool? followLoading,
      BlocksState topicsState,
      QuestionsState questionsState,
      BooksState booksState});

  $BlocksStateCopyWith<$Res> get topicsState;
  $QuestionsStateCopyWith<$Res> get questionsState;
  $BooksStateCopyWith<$Res> get booksState;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? profile = freezed,
    Object? error = freezed,
    Object? followLoading = freezed,
    Object? topicsState = null,
    Object? questionsState = null,
    Object? booksState = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      followLoading: freezed == followLoading
          ? _value.followLoading
          : followLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      topicsState: null == topicsState
          ? _value.topicsState
          : topicsState // ignore: cast_nullable_to_non_nullable
              as BlocksState,
      questionsState: null == questionsState
          ? _value.questionsState
          : questionsState // ignore: cast_nullable_to_non_nullable
              as QuestionsState,
      booksState: null == booksState
          ? _value.booksState
          : booksState // ignore: cast_nullable_to_non_nullable
              as BooksState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlocksStateCopyWith<$Res> get topicsState {
    return $BlocksStateCopyWith<$Res>(_value.topicsState, (value) {
      return _then(_value.copyWith(topicsState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsStateCopyWith<$Res> get questionsState {
    return $QuestionsStateCopyWith<$Res>(_value.questionsState, (value) {
      return _then(_value.copyWith(questionsState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BooksStateCopyWith<$Res> get booksState {
    return $BooksStateCopyWith<$Res>(_value.booksState, (value) {
      return _then(_value.copyWith(booksState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileStateImplCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$UserProfileStateImplCopyWith(_$UserProfileStateImpl value,
          $Res Function(_$UserProfileStateImpl) then) =
      __$$UserProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserProfileModel? profile,
      String? error,
      bool? followLoading,
      BlocksState topicsState,
      QuestionsState questionsState,
      BooksState booksState});

  @override
  $BlocksStateCopyWith<$Res> get topicsState;
  @override
  $QuestionsStateCopyWith<$Res> get questionsState;
  @override
  $BooksStateCopyWith<$Res> get booksState;
}

/// @nodoc
class __$$UserProfileStateImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileStateImpl>
    implements _$$UserProfileStateImplCopyWith<$Res> {
  __$$UserProfileStateImplCopyWithImpl(_$UserProfileStateImpl _value,
      $Res Function(_$UserProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? profile = freezed,
    Object? error = freezed,
    Object? followLoading = freezed,
    Object? topicsState = null,
    Object? questionsState = null,
    Object? booksState = null,
  }) {
    return _then(_$UserProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      followLoading: freezed == followLoading
          ? _value.followLoading
          : followLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      topicsState: null == topicsState
          ? _value.topicsState
          : topicsState // ignore: cast_nullable_to_non_nullable
              as BlocksState,
      questionsState: null == questionsState
          ? _value.questionsState
          : questionsState // ignore: cast_nullable_to_non_nullable
              as QuestionsState,
      booksState: null == booksState
          ? _value.booksState
          : booksState // ignore: cast_nullable_to_non_nullable
              as BooksState,
    ));
  }
}

/// @nodoc

class _$UserProfileStateImpl implements _UserProfileState {
  const _$UserProfileStateImpl(
      {this.isLoading = false,
      this.profile,
      this.error,
      this.followLoading = false,
      this.topicsState = const BlocksState(),
      this.questionsState = const QuestionsState(),
      this.booksState = const BooksState()});

// global loading
  @override
  @JsonKey()
  final bool isLoading;
// user profile
  @override
  final UserProfileModel? profile;
// global errors
  @override
  final String? error;
// follow loading
  @override
  @JsonKey()
  final bool? followLoading;
// topics state
  @override
  @JsonKey()
  final BlocksState topicsState;
// questions state
  @override
  @JsonKey()
  final QuestionsState questionsState;
// book state
  @override
  @JsonKey()
  final BooksState booksState;

  @override
  String toString() {
    return 'UserProfileState(isLoading: $isLoading, profile: $profile, error: $error, followLoading: $followLoading, topicsState: $topicsState, questionsState: $questionsState, booksState: $booksState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.followLoading, followLoading) ||
                other.followLoading == followLoading) &&
            (identical(other.topicsState, topicsState) ||
                other.topicsState == topicsState) &&
            (identical(other.questionsState, questionsState) ||
                other.questionsState == questionsState) &&
            (identical(other.booksState, booksState) ||
                other.booksState == booksState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, profile, error,
      followLoading, topicsState, questionsState, booksState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      __$$UserProfileStateImplCopyWithImpl<_$UserProfileStateImpl>(
          this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {final bool isLoading,
      final UserProfileModel? profile,
      final String? error,
      final bool? followLoading,
      final BlocksState topicsState,
      final QuestionsState questionsState,
      final BooksState booksState}) = _$UserProfileStateImpl;

  @override // global loading
  bool get isLoading;
  @override // user profile
  UserProfileModel? get profile;
  @override // global errors
  String? get error;
  @override // follow loading
  bool? get followLoading;
  @override // topics state
  BlocksState get topicsState;
  @override // questions state
  QuestionsState get questionsState;
  @override // book state
  BooksState get booksState;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileStateImplCopyWith<_$UserProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
