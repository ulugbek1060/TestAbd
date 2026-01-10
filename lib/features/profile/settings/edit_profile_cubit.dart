import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/features/profile/profile_state.dart';
import 'package:testabd/features/profile/settings/edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  final AppSettingsService _appModeService;

  late final StreamSubscription _themeSubscription;
  late final StreamSubscription _myInfoSubscription;

  EditProfileCubit(this._appModeService) : super(EditProfileState()) {
    // listen theme updates
    _themeSubscription = _appModeService.stream.listen((event) {
      emit(
        state.copyWith(
          appModeState: event == ThemeMode.dark
              ? const AppModeState.dark()
              : const AppModeState.light(),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _themeSubscription.cancel();
    _myInfoSubscription.cancel();
    return super.close();
  }

  void toggleMode() {
    final current = _appModeService.current;
    final next = switch (current) {
      ThemeMode.light => ThemeMode.dark,
      ThemeMode.dark => ThemeMode.light,
      ThemeMode.system => ThemeMode.system,
    };
    _appModeService.changeMode(next);
  }
}
