import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/profile/settings/regional_settings_state.dart';

@injectable
class RegionalSettingsCubit extends Cubit<RegionalSettingsState> {
  final AccountRepository _accountRepository;
  final AppMessageHandler _appMessageHandler;

  late final StreamSubscription<void> _subscription;

  RegionalSettingsCubit(this._accountRepository, this._appMessageHandler)
    : super(RegionalSettingsState()) {
    _subscription = _accountRepository.userInfoStream.listen((event) {
      emit(
        state.copyWith(
          countries: state.countries.copyWith(selected: event?.country),
          regions: state.regions.copyWith(selected: event?.region),
          districts: state.districts.copyWith(selected: event?.district),
          settlement: state.settlement.copyWith(selected: event?.settlement),
        ),
      );

      fetchRegions(event?.region?.country);
      fetchDistricts(event?.district?.region);
      fetchSettlements(event?.settlement?.district);
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  Future<void> fetchCountries() async {
    if (state.countries.isLoading) return;

    emit(state.copyWith(countries: state.countries.copyWith(isLoading: true)));

    final result = await _accountRepository.getCountries();
    result.fold(
      (error) {
        emit(
          state.copyWith(
            countries: state.countries.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
        _appMessageHandler.handleDialog(error);
      },
      (value) {
        emit(
          state.copyWith(
            countries: state.countries.copyWith(
              isLoading: false,
              countries: value,
              selected: value.first,
            ),
          ),
        );
        fetchRegions(value.first.id);
      },
    );
  }

  Future<void> fetchRegions(int? districtId) async {
    if (districtId == null) return;
    if (state.regions.isLoading) return;

    emit(
      state.copyWith(
        regions: state.regions.copyWith(isLoading: true, selected: null),
      ),
    );

    final result = await _accountRepository.getRegions(districtId);

    result.fold(
      (error) {
        emit(
          state.copyWith(
            regions: state.regions.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
        _appMessageHandler.handleDialog(error);
      },
      (value) {
        emit(
          state.copyWith(
            regions: state.regions.copyWith(isLoading: false, regions: value),
          ),
        );
      },
    );
  }

  Future<void> fetchDistricts(int? regionId) async {
    if (regionId == null) return;
    if (state.districts.isLoading) return;

    emit(
      state.copyWith(
        districts: state.districts.copyWith(isLoading: true, selected: null),
      ),
    );
    final result = await _accountRepository.getDistricts(regionId);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            districts: state.districts.copyWith(
              error: error.message,
              isLoading: false,
            ),
          ),
        );
        _appMessageHandler.handleDialog(error);
      },
      (value) {
        emit(
          state.copyWith(
            districts: state.districts.copyWith(
              districts: value,
              isLoading: false,
            ),
          ),
        );
      },
    );
  }

  Future<void> fetchSettlements(int? districtId) async {
    if (districtId == null) return;
    if (state.settlement.isLoading) return;

    emit(
      state.copyWith(
        settlement: state.settlement.copyWith(isLoading: true, selected: null),
      ),
    );

    final result = await _accountRepository.getSettlements(districtId);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            settlement: state.settlement.copyWith(
              error: error.message,
              isLoading: false,
            ),
          ),
        );
        _appMessageHandler.handleDialog(error);
      },
      (value) {
        emit(
          state.copyWith(
            settlement: state.settlement.copyWith(
              error: null,
              isLoading: false,
              settlements: value,
            ),
          ),
        );
      },
    );
  }

  Future<void> selectCountry(int? id) async {
    if (id == null) return;
    final country = state.countries.countries.firstWhere((e) => e.id == id);
    emit(
      state.copyWith(countries: state.countries.copyWith(selected: country)),
    );
    fetchRegions(id);
  }

  Future<void> selectRegion(int? id) async {
    if (id == null) return;
    final region = state.regions.regions.firstWhere((e) => e.id == id);
    emit(state.copyWith(regions: state.regions.copyWith(selected: region)));
    fetchDistricts(id);
  }

  Future<void> selectDistrict(int? id) async {
    if (id == null) return;
    final district = state.districts.districts.firstWhereOrNull(
      (e) => e.id == id,
    );
    emit(
      state.copyWith(districts: state.districts.copyWith(selected: district)),
    );
    fetchSettlements(id);
  }

  void toggleEditableMode() {
    emit(state.copyWith(isEditable: !state.isEditable));
  }
}
