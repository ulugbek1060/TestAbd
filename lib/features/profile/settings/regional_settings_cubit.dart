import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/features/profile/settings/regional_settings_state.dart';

@injectable
class RegionalSettingsCubit extends Cubit<RegionalSettingsState> {
  final AccountRepository _accountRepository;

  RegionalSettingsCubit(this._accountRepository)
    : super(RegionalSettingsState()) {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    emit(state.copyWith(isLoading: true));
    final result = await _accountRepository.getCountries();
    result.fold(
      (l) => emit(state.copyWith(isLoading: false, error: l.message)),
      (r) => emit(state.copyWith(isLoading: false, countries: r)),
    );
  }
}
