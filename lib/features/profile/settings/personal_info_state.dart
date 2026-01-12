import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';

part 'personal_info_state.freezed.dart';

enum PersonalInfoStatus { initial, loading, success, error }

@freezed
class PersonalInfoState with _$PersonalInfoState {
  const factory PersonalInfoState({
    @Default(PersonalInfoStatus.initial) PersonalInfoStatus status,
    @Default(null) MyInfoModel? myInfo,
    @Default(false) bool isEditable,
    String? error,
  }) = _PersonalInfoState;
}
