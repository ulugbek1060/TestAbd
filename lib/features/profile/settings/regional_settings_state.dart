import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/country_model.dart';

part 'regional_settings_state.freezed.dart';

@freezed
class RegionalSettingsState with _$RegionalSettingsState {
  const factory RegionalSettingsState({
    @Default(false) bool isEditable,
    String? error,
    @Default(false) bool isLoading,
    @Default([]) List<CountryModel> countries,
  }) = _RegionalSettingsState;
}
