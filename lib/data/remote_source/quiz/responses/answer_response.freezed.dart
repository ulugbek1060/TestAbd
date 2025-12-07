// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerResponse _$AnswerResponseFromJson(Map<String, dynamic> json) {
  return _AnswerResponse.fromJson(json);
}

/// @nodoc
mixin _$AnswerResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  int? get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'written_answer')
  String? get writtenAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  bool? get isCorrect => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerResponseCopyWith<AnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerResponseCopyWith<$Res> {
  factory $AnswerResponseCopyWith(
          AnswerResponse value, $Res Function(AnswerResponse) then) =
      _$AnswerResponseCopyWithImpl<$Res, AnswerResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'question') int? questionId,
      @JsonKey(name: 'written_answer') String? writtenAnswer,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      int? duration,
      String? feedback,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$AnswerResponseCopyWithImpl<$Res, $Val extends AnswerResponse>
    implements $AnswerResponseCopyWith<$Res> {
  _$AnswerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = freezed,
    Object? writtenAnswer = freezed,
    Object? isCorrect = freezed,
    Object? duration = freezed,
    Object? feedback = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      writtenAnswer: freezed == writtenAnswer
          ? _value.writtenAnswer
          : writtenAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerResponseImplCopyWith<$Res>
    implements $AnswerResponseCopyWith<$Res> {
  factory _$$AnswerResponseImplCopyWith(_$AnswerResponseImpl value,
          $Res Function(_$AnswerResponseImpl) then) =
      __$$AnswerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'question') int? questionId,
      @JsonKey(name: 'written_answer') String? writtenAnswer,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      int? duration,
      String? feedback,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$AnswerResponseImplCopyWithImpl<$Res>
    extends _$AnswerResponseCopyWithImpl<$Res, _$AnswerResponseImpl>
    implements _$$AnswerResponseImplCopyWith<$Res> {
  __$$AnswerResponseImplCopyWithImpl(
      _$AnswerResponseImpl _value, $Res Function(_$AnswerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = freezed,
    Object? writtenAnswer = freezed,
    Object? isCorrect = freezed,
    Object? duration = freezed,
    Object? feedback = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$AnswerResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      writtenAnswer: freezed == writtenAnswer
          ? _value.writtenAnswer
          : writtenAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerResponseImpl implements _AnswerResponse {
  const _$AnswerResponseImpl(
      {required this.id,
      @JsonKey(name: 'question') this.questionId,
      @JsonKey(name: 'written_answer') this.writtenAnswer,
      @JsonKey(name: 'is_correct') this.isCorrect,
      this.duration,
      this.feedback,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$AnswerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'question')
  final int? questionId;
  @override
  @JsonKey(name: 'written_answer')
  final String? writtenAnswer;
  @override
  @JsonKey(name: 'is_correct')
  final bool? isCorrect;
  @override
  final int? duration;
  @override
  final String? feedback;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'AnswerResponse(id: $id, questionId: $questionId, writtenAnswer: $writtenAnswer, isCorrect: $isCorrect, duration: $duration, feedback: $feedback, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.writtenAnswer, writtenAnswer) ||
                other.writtenAnswer == writtenAnswer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, writtenAnswer,
      isCorrect, duration, feedback, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerResponseImplCopyWith<_$AnswerResponseImpl> get copyWith =>
      __$$AnswerResponseImplCopyWithImpl<_$AnswerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerResponseImplToJson(
      this,
    );
  }
}

abstract class _AnswerResponse implements AnswerResponse {
  const factory _AnswerResponse(
          {required final int id,
          @JsonKey(name: 'question') final int? questionId,
          @JsonKey(name: 'written_answer') final String? writtenAnswer,
          @JsonKey(name: 'is_correct') final bool? isCorrect,
          final int? duration,
          final String? feedback,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$AnswerResponseImpl;

  factory _AnswerResponse.fromJson(Map<String, dynamic> json) =
      _$AnswerResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'question')
  int? get questionId;
  @override
  @JsonKey(name: 'written_answer')
  String? get writtenAnswer;
  @override
  @JsonKey(name: 'is_correct')
  bool? get isCorrect;
  @override
  int? get duration;
  @override
  String? get feedback;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$AnswerResponseImplCopyWith<_$AnswerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
