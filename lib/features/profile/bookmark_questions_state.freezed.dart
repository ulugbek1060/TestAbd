// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_questions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkQuestionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  QuestionsBookmarkModel get bookmarkQuestions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkQuestionsStateCopyWith<BookmarkQuestionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkQuestionsStateCopyWith<$Res> {
  factory $BookmarkQuestionsStateCopyWith(BookmarkQuestionsState value,
          $Res Function(BookmarkQuestionsState) then) =
      _$BookmarkQuestionsStateCopyWithImpl<$Res, BookmarkQuestionsState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      QuestionsBookmarkModel bookmarkQuestions});
}

/// @nodoc
class _$BookmarkQuestionsStateCopyWithImpl<$Res,
        $Val extends BookmarkQuestionsState>
    implements $BookmarkQuestionsStateCopyWith<$Res> {
  _$BookmarkQuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? bookmarkQuestions = null,
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
      bookmarkQuestions: null == bookmarkQuestions
          ? _value.bookmarkQuestions
          : bookmarkQuestions // ignore: cast_nullable_to_non_nullable
              as QuestionsBookmarkModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkQuestionsStateImplCopyWith<$Res>
    implements $BookmarkQuestionsStateCopyWith<$Res> {
  factory _$$BookmarkQuestionsStateImplCopyWith(
          _$BookmarkQuestionsStateImpl value,
          $Res Function(_$BookmarkQuestionsStateImpl) then) =
      __$$BookmarkQuestionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? error,
      QuestionsBookmarkModel bookmarkQuestions});
}

/// @nodoc
class __$$BookmarkQuestionsStateImplCopyWithImpl<$Res>
    extends _$BookmarkQuestionsStateCopyWithImpl<$Res,
        _$BookmarkQuestionsStateImpl>
    implements _$$BookmarkQuestionsStateImplCopyWith<$Res> {
  __$$BookmarkQuestionsStateImplCopyWithImpl(
      _$BookmarkQuestionsStateImpl _value,
      $Res Function(_$BookmarkQuestionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? bookmarkQuestions = null,
  }) {
    return _then(_$BookmarkQuestionsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      bookmarkQuestions: null == bookmarkQuestions
          ? _value.bookmarkQuestions
          : bookmarkQuestions // ignore: cast_nullable_to_non_nullable
              as QuestionsBookmarkModel,
    ));
  }
}

/// @nodoc

class _$BookmarkQuestionsStateImpl implements _BookmarkQuestionsState {
  const _$BookmarkQuestionsStateImpl(
      {this.isLoading = false,
      this.error = null,
      this.bookmarkQuestions = const QuestionsBookmarkModel()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final QuestionsBookmarkModel bookmarkQuestions;

  @override
  String toString() {
    return 'BookmarkQuestionsState(isLoading: $isLoading, error: $error, bookmarkQuestions: $bookmarkQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkQuestionsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.bookmarkQuestions, bookmarkQuestions) ||
                other.bookmarkQuestions == bookmarkQuestions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, bookmarkQuestions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkQuestionsStateImplCopyWith<_$BookmarkQuestionsStateImpl>
      get copyWith => __$$BookmarkQuestionsStateImplCopyWithImpl<
          _$BookmarkQuestionsStateImpl>(this, _$identity);
}

abstract class _BookmarkQuestionsState implements BookmarkQuestionsState {
  const factory _BookmarkQuestionsState(
          {final bool isLoading,
          final String? error,
          final QuestionsBookmarkModel bookmarkQuestions}) =
      _$BookmarkQuestionsStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  QuestionsBookmarkModel get bookmarkQuestions;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkQuestionsStateImplCopyWith<_$BookmarkQuestionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
