import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'regional_settings_state.dart';

class RegionalSettingsCubit extends Cubit<RegionalSettingsState> {
  RegionalSettingsCubit() : super(RegionalSettingsInitial());
}
