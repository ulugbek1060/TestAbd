import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/user_profile_model.dart';
import 'package:testabd/domain/quiz/entities/topics_model.dart';

part 'user_profile_state.freezed.dart';

@freezed
class TopicsState with _$TopicsState {
  const factory TopicsState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default([]) List<TopicItem> topics,
    @Default(1) int nextPage,
    @Default(0) int previousPage,
  }) = _TopicsState;
}

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    // global loading
    @Default(false) bool isLoading,
    // user profile
    UserProfileModel? profile,
    // global errors
    String? error,
    // follow loading
    @Default(false) bool? followLoading,
    // topics state
    @Default(TopicsState()) TopicsState topicsState,
  }) = _UserProfileState;
}
