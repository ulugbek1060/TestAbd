import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_user_data_state.freezed.dart';

@freezed
class EditUserDataState with _$EditUserDataState {
  const factory EditUserDataState({
    String? error,
    @Default(false) bool isLoading,
  }) = _EditUserDataState;
}
