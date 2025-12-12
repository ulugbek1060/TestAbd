// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_related_questions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopicRelatedQuestionsResponse _$TopicRelatedQuestionsResponseFromJson(
    Map<String, dynamic> json) {
  return _TopicRelatedQuestionsResponse.fromJson(json);
}

/// @nodoc
mixin _$TopicRelatedQuestionsResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<TopicQuestionItemResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicRelatedQuestionsResponseCopyWith<TopicRelatedQuestionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicRelatedQuestionsResponseCopyWith<$Res> {
  factory $TopicRelatedQuestionsResponseCopyWith(
          TopicRelatedQuestionsResponse value,
          $Res Function(TopicRelatedQuestionsResponse) then) =
      _$TopicRelatedQuestionsResponseCopyWithImpl<$Res,
          TopicRelatedQuestionsResponse>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<TopicQuestionItemResponse> results});
}

/// @nodoc
class _$TopicRelatedQuestionsResponseCopyWithImpl<$Res,
        $Val extends TopicRelatedQuestionsResponse>
    implements $TopicRelatedQuestionsResponseCopyWith<$Res> {
  _$TopicRelatedQuestionsResponseCopyWithImpl(this._value, this._then);

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
              as List<TopicQuestionItemResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicRelatedQuestionsResponseImplCopyWith<$Res>
    implements $TopicRelatedQuestionsResponseCopyWith<$Res> {
  factory _$$TopicRelatedQuestionsResponseImplCopyWith(
          _$TopicRelatedQuestionsResponseImpl value,
          $Res Function(_$TopicRelatedQuestionsResponseImpl) then) =
      __$$TopicRelatedQuestionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<TopicQuestionItemResponse> results});
}

/// @nodoc
class __$$TopicRelatedQuestionsResponseImplCopyWithImpl<$Res>
    extends _$TopicRelatedQuestionsResponseCopyWithImpl<$Res,
        _$TopicRelatedQuestionsResponseImpl>
    implements _$$TopicRelatedQuestionsResponseImplCopyWith<$Res> {
  __$$TopicRelatedQuestionsResponseImplCopyWithImpl(
      _$TopicRelatedQuestionsResponseImpl _value,
      $Res Function(_$TopicRelatedQuestionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$TopicRelatedQuestionsResponseImpl(
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
              as List<TopicQuestionItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicRelatedQuestionsResponseImpl
    implements _TopicRelatedQuestionsResponse {
  const _$TopicRelatedQuestionsResponseImpl(
      {this.count,
      this.next,
      this.previous,
      final List<TopicQuestionItemResponse> results = const []})
      : _results = results;

  factory _$TopicRelatedQuestionsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TopicRelatedQuestionsResponseImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<TopicQuestionItemResponse> _results;
  @override
  @JsonKey()
  List<TopicQuestionItemResponse> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TopicRelatedQuestionsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicRelatedQuestionsResponseImpl &&
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
  _$$TopicRelatedQuestionsResponseImplCopyWith<
          _$TopicRelatedQuestionsResponseImpl>
      get copyWith => __$$TopicRelatedQuestionsResponseImplCopyWithImpl<
          _$TopicRelatedQuestionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicRelatedQuestionsResponseImplToJson(
      this,
    );
  }
}

abstract class _TopicRelatedQuestionsResponse
    implements TopicRelatedQuestionsResponse {
  const factory _TopicRelatedQuestionsResponse(
          {final int? count,
          final String? next,
          final String? previous,
          final List<TopicQuestionItemResponse> results}) =
      _$TopicRelatedQuestionsResponseImpl;

  factory _TopicRelatedQuestionsResponse.fromJson(Map<String, dynamic> json) =
      _$TopicRelatedQuestionsResponseImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<TopicQuestionItemResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$TopicRelatedQuestionsResponseImplCopyWith<
          _$TopicRelatedQuestionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopicQuestionItemResponse _$TopicQuestionItemResponseFromJson(
    Map<String, dynamic> json) {
  return _TopicQuestionItemResponse.fromJson(json);
}

/// @nodoc
mixin _$TopicQuestionItemResponse {
  int? get id => throw _privateConstructorUsedError;
  TopicUserShortResponse? get user => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String? get access_mode => throw _privateConstructorUsedError;
  String? get participant_roles => throw _privateConstructorUsedError;
  int? get max_participants => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String? get end_time => throw _privateConstructorUsedError;
  int? get min_score_to_finish => throw _privateConstructorUsedError;
  int? get participant_count_to_finish => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  bool? get is_region_premium => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  double? get difficulty_percentage => throw _privateConstructorUsedError;
  int? get total_questions => throw _privateConstructorUsedError;
  List<TopicQuestionResponse> get questions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicQuestionItemResponseCopyWith<TopicQuestionItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicQuestionItemResponseCopyWith<$Res> {
  factory $TopicQuestionItemResponseCopyWith(TopicQuestionItemResponse value,
          $Res Function(TopicQuestionItemResponse) then) =
      _$TopicQuestionItemResponseCopyWithImpl<$Res, TopicQuestionItemResponse>;
  @useResult
  $Res call(
      {int? id,
      TopicUserShortResponse? user,
      String? title,
      String? description,
      String? category,
      String? visibility,
      String? access_mode,
      String? participant_roles,
      int? max_participants,
      String? start_time,
      String? end_time,
      int? min_score_to_finish,
      int? participant_count_to_finish,
      String? country,
      String? region,
      String? district,
      bool? is_region_premium,
      String? created_at,
      double? difficulty_percentage,
      int? total_questions,
      List<TopicQuestionResponse> questions});

  $TopicUserShortResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$TopicQuestionItemResponseCopyWithImpl<$Res,
        $Val extends TopicQuestionItemResponse>
    implements $TopicQuestionItemResponseCopyWith<$Res> {
  _$TopicQuestionItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? visibility = freezed,
    Object? access_mode = freezed,
    Object? participant_roles = freezed,
    Object? max_participants = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? min_score_to_finish = freezed,
    Object? participant_count_to_finish = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? district = freezed,
    Object? is_region_premium = freezed,
    Object? created_at = freezed,
    Object? difficulty_percentage = freezed,
    Object? total_questions = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TopicUserShortResponse?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      access_mode: freezed == access_mode
          ? _value.access_mode
          : access_mode // ignore: cast_nullable_to_non_nullable
              as String?,
      participant_roles: freezed == participant_roles
          ? _value.participant_roles
          : participant_roles // ignore: cast_nullable_to_non_nullable
              as String?,
      max_participants: freezed == max_participants
          ? _value.max_participants
          : max_participants // ignore: cast_nullable_to_non_nullable
              as int?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      min_score_to_finish: freezed == min_score_to_finish
          ? _value.min_score_to_finish
          : min_score_to_finish // ignore: cast_nullable_to_non_nullable
              as int?,
      participant_count_to_finish: freezed == participant_count_to_finish
          ? _value.participant_count_to_finish
          : participant_count_to_finish // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      is_region_premium: freezed == is_region_premium
          ? _value.is_region_premium
          : is_region_premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty_percentage: freezed == difficulty_percentage
          ? _value.difficulty_percentage
          : difficulty_percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      total_questions: freezed == total_questions
          ? _value.total_questions
          : total_questions // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TopicQuestionResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicUserShortResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $TopicUserShortResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicQuestionItemResponseImplCopyWith<$Res>
    implements $TopicQuestionItemResponseCopyWith<$Res> {
  factory _$$TopicQuestionItemResponseImplCopyWith(
          _$TopicQuestionItemResponseImpl value,
          $Res Function(_$TopicQuestionItemResponseImpl) then) =
      __$$TopicQuestionItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      TopicUserShortResponse? user,
      String? title,
      String? description,
      String? category,
      String? visibility,
      String? access_mode,
      String? participant_roles,
      int? max_participants,
      String? start_time,
      String? end_time,
      int? min_score_to_finish,
      int? participant_count_to_finish,
      String? country,
      String? region,
      String? district,
      bool? is_region_premium,
      String? created_at,
      double? difficulty_percentage,
      int? total_questions,
      List<TopicQuestionResponse> questions});

  @override
  $TopicUserShortResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TopicQuestionItemResponseImplCopyWithImpl<$Res>
    extends _$TopicQuestionItemResponseCopyWithImpl<$Res,
        _$TopicQuestionItemResponseImpl>
    implements _$$TopicQuestionItemResponseImplCopyWith<$Res> {
  __$$TopicQuestionItemResponseImplCopyWithImpl(
      _$TopicQuestionItemResponseImpl _value,
      $Res Function(_$TopicQuestionItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? visibility = freezed,
    Object? access_mode = freezed,
    Object? participant_roles = freezed,
    Object? max_participants = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? min_score_to_finish = freezed,
    Object? participant_count_to_finish = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? district = freezed,
    Object? is_region_premium = freezed,
    Object? created_at = freezed,
    Object? difficulty_percentage = freezed,
    Object? total_questions = freezed,
    Object? questions = null,
  }) {
    return _then(_$TopicQuestionItemResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TopicUserShortResponse?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      access_mode: freezed == access_mode
          ? _value.access_mode
          : access_mode // ignore: cast_nullable_to_non_nullable
              as String?,
      participant_roles: freezed == participant_roles
          ? _value.participant_roles
          : participant_roles // ignore: cast_nullable_to_non_nullable
              as String?,
      max_participants: freezed == max_participants
          ? _value.max_participants
          : max_participants // ignore: cast_nullable_to_non_nullable
              as int?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      min_score_to_finish: freezed == min_score_to_finish
          ? _value.min_score_to_finish
          : min_score_to_finish // ignore: cast_nullable_to_non_nullable
              as int?,
      participant_count_to_finish: freezed == participant_count_to_finish
          ? _value.participant_count_to_finish
          : participant_count_to_finish // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      is_region_premium: freezed == is_region_premium
          ? _value.is_region_premium
          : is_region_premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty_percentage: freezed == difficulty_percentage
          ? _value.difficulty_percentage
          : difficulty_percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      total_questions: freezed == total_questions
          ? _value.total_questions
          : total_questions // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TopicQuestionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicQuestionItemResponseImpl implements _TopicQuestionItemResponse {
  const _$TopicQuestionItemResponseImpl(
      {this.id,
      this.user,
      this.title,
      this.description,
      this.category,
      this.visibility,
      this.access_mode,
      this.participant_roles,
      this.max_participants,
      this.start_time,
      this.end_time,
      this.min_score_to_finish,
      this.participant_count_to_finish,
      this.country,
      this.region,
      this.district,
      this.is_region_premium,
      this.created_at,
      this.difficulty_percentage,
      this.total_questions,
      final List<TopicQuestionResponse> questions = const []})
      : _questions = questions;

  factory _$TopicQuestionItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicQuestionItemResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final TopicUserShortResponse? user;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? visibility;
  @override
  final String? access_mode;
  @override
  final String? participant_roles;
  @override
  final int? max_participants;
  @override
  final String? start_time;
  @override
  final String? end_time;
  @override
  final int? min_score_to_finish;
  @override
  final int? participant_count_to_finish;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? district;
  @override
  final bool? is_region_premium;
  @override
  final String? created_at;
  @override
  final double? difficulty_percentage;
  @override
  final int? total_questions;
  final List<TopicQuestionResponse> _questions;
  @override
  @JsonKey()
  List<TopicQuestionResponse> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'TopicQuestionItemResponse(id: $id, user: $user, title: $title, description: $description, category: $category, visibility: $visibility, access_mode: $access_mode, participant_roles: $participant_roles, max_participants: $max_participants, start_time: $start_time, end_time: $end_time, min_score_to_finish: $min_score_to_finish, participant_count_to_finish: $participant_count_to_finish, country: $country, region: $region, district: $district, is_region_premium: $is_region_premium, created_at: $created_at, difficulty_percentage: $difficulty_percentage, total_questions: $total_questions, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicQuestionItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.access_mode, access_mode) ||
                other.access_mode == access_mode) &&
            (identical(other.participant_roles, participant_roles) ||
                other.participant_roles == participant_roles) &&
            (identical(other.max_participants, max_participants) ||
                other.max_participants == max_participants) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.min_score_to_finish, min_score_to_finish) ||
                other.min_score_to_finish == min_score_to_finish) &&
            (identical(other.participant_count_to_finish,
                    participant_count_to_finish) ||
                other.participant_count_to_finish ==
                    participant_count_to_finish) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.is_region_premium, is_region_premium) ||
                other.is_region_premium == is_region_premium) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.difficulty_percentage, difficulty_percentage) ||
                other.difficulty_percentage == difficulty_percentage) &&
            (identical(other.total_questions, total_questions) ||
                other.total_questions == total_questions) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        user,
        title,
        description,
        category,
        visibility,
        access_mode,
        participant_roles,
        max_participants,
        start_time,
        end_time,
        min_score_to_finish,
        participant_count_to_finish,
        country,
        region,
        district,
        is_region_premium,
        created_at,
        difficulty_percentage,
        total_questions,
        const DeepCollectionEquality().hash(_questions)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicQuestionItemResponseImplCopyWith<_$TopicQuestionItemResponseImpl>
      get copyWith => __$$TopicQuestionItemResponseImplCopyWithImpl<
          _$TopicQuestionItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicQuestionItemResponseImplToJson(
      this,
    );
  }
}

abstract class _TopicQuestionItemResponse implements TopicQuestionItemResponse {
  const factory _TopicQuestionItemResponse(
          {final int? id,
          final TopicUserShortResponse? user,
          final String? title,
          final String? description,
          final String? category,
          final String? visibility,
          final String? access_mode,
          final String? participant_roles,
          final int? max_participants,
          final String? start_time,
          final String? end_time,
          final int? min_score_to_finish,
          final int? participant_count_to_finish,
          final String? country,
          final String? region,
          final String? district,
          final bool? is_region_premium,
          final String? created_at,
          final double? difficulty_percentage,
          final int? total_questions,
          final List<TopicQuestionResponse> questions}) =
      _$TopicQuestionItemResponseImpl;

  factory _TopicQuestionItemResponse.fromJson(Map<String, dynamic> json) =
      _$TopicQuestionItemResponseImpl.fromJson;

  @override
  int? get id;
  @override
  TopicUserShortResponse? get user;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get visibility;
  @override
  String? get access_mode;
  @override
  String? get participant_roles;
  @override
  int? get max_participants;
  @override
  String? get start_time;
  @override
  String? get end_time;
  @override
  int? get min_score_to_finish;
  @override
  int? get participant_count_to_finish;
  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get district;
  @override
  bool? get is_region_premium;
  @override
  String? get created_at;
  @override
  double? get difficulty_percentage;
  @override
  int? get total_questions;
  @override
  List<TopicQuestionResponse> get questions;
  @override
  @JsonKey(ignore: true)
  _$$TopicQuestionItemResponseImplCopyWith<_$TopicQuestionItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopicQuestionResponse _$TopicQuestionResponseFromJson(
    Map<String, dynamic> json) {
  return _TopicQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$TopicQuestionResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get test => throw _privateConstructorUsedError;
  String? get test_title => throw _privateConstructorUsedError;
  String? get question_text => throw _privateConstructorUsedError;
  String? get question_type => throw _privateConstructorUsedError;
  int? get order_index => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  List<TopicAnswerResponse> get answers => throw _privateConstructorUsedError;
  String? get test_description => throw _privateConstructorUsedError;
  String? get correct_answer_text => throw _privateConstructorUsedError;
  String? get answer_language => throw _privateConstructorUsedError;
  int? get correct_count => throw _privateConstructorUsedError;
  int? get wrong_count => throw _privateConstructorUsedError;
  double? get difficulty_percentage => throw _privateConstructorUsedError;
  int? get user_attempt_count => throw _privateConstructorUsedError;
  TopicUserShortResponse? get user => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get round_image => throw _privateConstructorUsedError;
  bool? get is_bookmarked => throw _privateConstructorUsedError;
  bool? get is_following => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicQuestionResponseCopyWith<TopicQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicQuestionResponseCopyWith<$Res> {
  factory $TopicQuestionResponseCopyWith(TopicQuestionResponse value,
          $Res Function(TopicQuestionResponse) then) =
      _$TopicQuestionResponseCopyWithImpl<$Res, TopicQuestionResponse>;
  @useResult
  $Res call(
      {int? id,
      int? test,
      String? test_title,
      String? question_text,
      String? question_type,
      int? order_index,
      String? media,
      List<TopicAnswerResponse> answers,
      String? test_description,
      String? correct_answer_text,
      String? answer_language,
      int? correct_count,
      int? wrong_count,
      double? difficulty_percentage,
      int? user_attempt_count,
      TopicUserShortResponse? user,
      String? created_at,
      String? round_image,
      bool? is_bookmarked,
      bool? is_following,
      int? category});

  $TopicUserShortResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$TopicQuestionResponseCopyWithImpl<$Res,
        $Val extends TopicQuestionResponse>
    implements $TopicQuestionResponseCopyWith<$Res> {
  _$TopicQuestionResponseCopyWithImpl(this._value, this._then);

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
              as List<TopicAnswerResponse>,
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
              as TopicUserShortResponse?,
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
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicUserShortResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $TopicUserShortResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicQuestionResponseImplCopyWith<$Res>
    implements $TopicQuestionResponseCopyWith<$Res> {
  factory _$$TopicQuestionResponseImplCopyWith(
          _$TopicQuestionResponseImpl value,
          $Res Function(_$TopicQuestionResponseImpl) then) =
      __$$TopicQuestionResponseImplCopyWithImpl<$Res>;
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
      List<TopicAnswerResponse> answers,
      String? test_description,
      String? correct_answer_text,
      String? answer_language,
      int? correct_count,
      int? wrong_count,
      double? difficulty_percentage,
      int? user_attempt_count,
      TopicUserShortResponse? user,
      String? created_at,
      String? round_image,
      bool? is_bookmarked,
      bool? is_following,
      int? category});

  @override
  $TopicUserShortResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TopicQuestionResponseImplCopyWithImpl<$Res>
    extends _$TopicQuestionResponseCopyWithImpl<$Res,
        _$TopicQuestionResponseImpl>
    implements _$$TopicQuestionResponseImplCopyWith<$Res> {
  __$$TopicQuestionResponseImplCopyWithImpl(_$TopicQuestionResponseImpl _value,
      $Res Function(_$TopicQuestionResponseImpl) _then)
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
    return _then(_$TopicQuestionResponseImpl(
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
              as List<TopicAnswerResponse>,
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
              as TopicUserShortResponse?,
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicQuestionResponseImpl implements _TopicQuestionResponse {
  const _$TopicQuestionResponseImpl(
      {this.id,
      this.test,
      this.test_title,
      this.question_text,
      this.question_type,
      this.order_index,
      this.media,
      final List<TopicAnswerResponse> answers = const [],
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

  factory _$TopicQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicQuestionResponseImplFromJson(json);

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
  final List<TopicAnswerResponse> _answers;
  @override
  @JsonKey()
  List<TopicAnswerResponse> get answers {
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
  final TopicUserShortResponse? user;
  @override
  final String? created_at;
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
    return 'TopicQuestionResponse(id: $id, test: $test, test_title: $test_title, question_text: $question_text, question_type: $question_type, order_index: $order_index, media: $media, answers: $answers, test_description: $test_description, correct_answer_text: $correct_answer_text, answer_language: $answer_language, correct_count: $correct_count, wrong_count: $wrong_count, difficulty_percentage: $difficulty_percentage, user_attempt_count: $user_attempt_count, user: $user, created_at: $created_at, round_image: $round_image, is_bookmarked: $is_bookmarked, is_following: $is_following, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicQuestionResponseImpl &&
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
  _$$TopicQuestionResponseImplCopyWith<_$TopicQuestionResponseImpl>
      get copyWith => __$$TopicQuestionResponseImplCopyWithImpl<
          _$TopicQuestionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicQuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _TopicQuestionResponse implements TopicQuestionResponse {
  const factory _TopicQuestionResponse(
      {final int? id,
      final int? test,
      final String? test_title,
      final String? question_text,
      final String? question_type,
      final int? order_index,
      final String? media,
      final List<TopicAnswerResponse> answers,
      final String? test_description,
      final String? correct_answer_text,
      final String? answer_language,
      final int? correct_count,
      final int? wrong_count,
      final double? difficulty_percentage,
      final int? user_attempt_count,
      final TopicUserShortResponse? user,
      final String? created_at,
      final String? round_image,
      final bool? is_bookmarked,
      final bool? is_following,
      final int? category}) = _$TopicQuestionResponseImpl;

  factory _TopicQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$TopicQuestionResponseImpl.fromJson;

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
  List<TopicAnswerResponse> get answers;
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
  TopicUserShortResponse? get user;
  @override
  String? get created_at;
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
  _$$TopicQuestionResponseImplCopyWith<_$TopicQuestionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopicAnswerResponse _$TopicAnswerResponseFromJson(Map<String, dynamic> json) {
  return _TopicAnswerResponse.fromJson(json);
}

/// @nodoc
mixin _$TopicAnswerResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get letter => throw _privateConstructorUsedError;
  String? get answer_text => throw _privateConstructorUsedError;
  bool? get is_correct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicAnswerResponseCopyWith<TopicAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicAnswerResponseCopyWith<$Res> {
  factory $TopicAnswerResponseCopyWith(
          TopicAnswerResponse value, $Res Function(TopicAnswerResponse) then) =
      _$TopicAnswerResponseCopyWithImpl<$Res, TopicAnswerResponse>;
  @useResult
  $Res call({int? id, String? letter, String? answer_text, bool? is_correct});
}

/// @nodoc
class _$TopicAnswerResponseCopyWithImpl<$Res, $Val extends TopicAnswerResponse>
    implements $TopicAnswerResponseCopyWith<$Res> {
  _$TopicAnswerResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$TopicAnswerResponseImplCopyWith<$Res>
    implements $TopicAnswerResponseCopyWith<$Res> {
  factory _$$TopicAnswerResponseImplCopyWith(_$TopicAnswerResponseImpl value,
          $Res Function(_$TopicAnswerResponseImpl) then) =
      __$$TopicAnswerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? letter, String? answer_text, bool? is_correct});
}

/// @nodoc
class __$$TopicAnswerResponseImplCopyWithImpl<$Res>
    extends _$TopicAnswerResponseCopyWithImpl<$Res, _$TopicAnswerResponseImpl>
    implements _$$TopicAnswerResponseImplCopyWith<$Res> {
  __$$TopicAnswerResponseImplCopyWithImpl(_$TopicAnswerResponseImpl _value,
      $Res Function(_$TopicAnswerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? letter = freezed,
    Object? answer_text = freezed,
    Object? is_correct = freezed,
  }) {
    return _then(_$TopicAnswerResponseImpl(
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
class _$TopicAnswerResponseImpl implements _TopicAnswerResponse {
  const _$TopicAnswerResponseImpl(
      {this.id, this.letter, this.answer_text, this.is_correct});

  factory _$TopicAnswerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicAnswerResponseImplFromJson(json);

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
    return 'TopicAnswerResponse(id: $id, letter: $letter, answer_text: $answer_text, is_correct: $is_correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicAnswerResponseImpl &&
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
  _$$TopicAnswerResponseImplCopyWith<_$TopicAnswerResponseImpl> get copyWith =>
      __$$TopicAnswerResponseImplCopyWithImpl<_$TopicAnswerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicAnswerResponseImplToJson(
      this,
    );
  }
}

abstract class _TopicAnswerResponse implements TopicAnswerResponse {
  const factory _TopicAnswerResponse(
      {final int? id,
      final String? letter,
      final String? answer_text,
      final bool? is_correct}) = _$TopicAnswerResponseImpl;

  factory _TopicAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$TopicAnswerResponseImpl.fromJson;

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
  _$$TopicAnswerResponseImplCopyWith<_$TopicAnswerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicUserShortResponse _$TopicUserShortResponseFromJson(
    Map<String, dynamic> json) {
  return _TopicUserShortResponse.fromJson(json);
}

/// @nodoc
mixin _$TopicUserShortResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;
  bool? get is_badged => throw _privateConstructorUsedError;
  bool? get is_premium => throw _privateConstructorUsedError;
  bool? get is_following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicUserShortResponseCopyWith<TopicUserShortResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicUserShortResponseCopyWith<$Res> {
  factory $TopicUserShortResponseCopyWith(TopicUserShortResponse value,
          $Res Function(TopicUserShortResponse) then) =
      _$TopicUserShortResponseCopyWithImpl<$Res, TopicUserShortResponse>;
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
class _$TopicUserShortResponseCopyWithImpl<$Res,
        $Val extends TopicUserShortResponse>
    implements $TopicUserShortResponseCopyWith<$Res> {
  _$TopicUserShortResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$TopicUserShortResponseImplCopyWith<$Res>
    implements $TopicUserShortResponseCopyWith<$Res> {
  factory _$$TopicUserShortResponseImplCopyWith(
          _$TopicUserShortResponseImpl value,
          $Res Function(_$TopicUserShortResponseImpl) then) =
      __$$TopicUserShortResponseImplCopyWithImpl<$Res>;
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
class __$$TopicUserShortResponseImplCopyWithImpl<$Res>
    extends _$TopicUserShortResponseCopyWithImpl<$Res,
        _$TopicUserShortResponseImpl>
    implements _$$TopicUserShortResponseImplCopyWith<$Res> {
  __$$TopicUserShortResponseImplCopyWithImpl(
      _$TopicUserShortResponseImpl _value,
      $Res Function(_$TopicUserShortResponseImpl) _then)
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
    return _then(_$TopicUserShortResponseImpl(
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
class _$TopicUserShortResponseImpl implements _TopicUserShortResponse {
  const _$TopicUserShortResponseImpl(
      {this.id,
      this.username,
      this.profile_image,
      this.is_badged,
      this.is_premium,
      this.is_following});

  factory _$TopicUserShortResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicUserShortResponseImplFromJson(json);

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
    return 'TopicUserShortResponse(id: $id, username: $username, profile_image: $profile_image, is_badged: $is_badged, is_premium: $is_premium, is_following: $is_following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicUserShortResponseImpl &&
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
  _$$TopicUserShortResponseImplCopyWith<_$TopicUserShortResponseImpl>
      get copyWith => __$$TopicUserShortResponseImplCopyWithImpl<
          _$TopicUserShortResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicUserShortResponseImplToJson(
      this,
    );
  }
}

abstract class _TopicUserShortResponse implements TopicUserShortResponse {
  const factory _TopicUserShortResponse(
      {final int? id,
      final String? username,
      final String? profile_image,
      final bool? is_badged,
      final bool? is_premium,
      final bool? is_following}) = _$TopicUserShortResponseImpl;

  factory _TopicUserShortResponse.fromJson(Map<String, dynamic> json) =
      _$TopicUserShortResponseImpl.fromJson;

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
  _$$TopicUserShortResponseImplCopyWith<_$TopicUserShortResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
