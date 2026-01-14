import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/country_model.dart';
import 'package:testabd/domain/account/entities/district_model.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/region_model.dart';
import 'package:testabd/domain/account/entities/settlement_model.dart';

part 'regional_settings_state.freezed.dart';

@freezed
class RegionalSettingsState with _$RegionalSettingsState {
  const factory RegionalSettingsState({
    @Default(false) bool isEditable,
    @Default(CountriesState()) CountriesState countries,
    @Default(RegionsState()) RegionsState regions,
    @Default(DistrictsState()) DistrictsState districts,
    @Default(SettlementState()) SettlementState settlement,
  }) = _RegionalSettingsState;
}

@freezed
class CountriesState with _$CountriesState {
  const factory CountriesState({
    @Default(false) bool isLoading,
    String? error,
    CountryModel? selected,
    @Default([]) List<CountryModel> countries,
  }) = _CountriesState;
}

@freezed
class RegionsState with _$RegionsState {
  const factory RegionsState({
    @Default(false) bool isLoading,
    String? error,
    RegionModel? selected,
    @Default([]) List<RegionModel> regions,
  }) = _RegionsState;
}


@freezed
class DistrictsState with _$DistrictsState {
  const factory DistrictsState({
    @Default(false) bool isLoading,
    String? error,
    DistrictModel? selected,
    @Default([]) List<DistrictModel> districts,
  }) = _DistrictsState;
}

@freezed
class SettlementState with _$SettlementState {
  const factory SettlementState({
    @Default(false) bool isLoading,
    String? error,
    SettlementModel? selected,
    @Default([]) List<SettlementModel> settlements,
  }) = _SettlementState;
}
