import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/domain/auth/auth_repository.dart';
import 'package:testabd/features/profile/profile_state.dart';
import 'package:testabd/main.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepository _authRepository;
  final AppSettingsService _appModeService;

  late final StreamSubscription _themeSubscription;


  ProfileCubit(this._authRepository, this._appModeService)
    : super(ProfileState()){

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
    return super.close();
  }

  /// 1. followers

  /// 2. my_tests

  /// 3. countries

  /// 4. recent


  void toggleMode() {
    final current = _appModeService.current;
    final next = switch (current) {
      ThemeMode.light => ThemeMode.dark,
      ThemeMode.dark => ThemeMode.light,
      ThemeMode.system => ThemeMode.light,
    };
    _appModeService.changeMode(next);
  }

  // logout
  void logout() async {
    final result = await _authRepository.logout();
    result.fold(
      (error) {
        logger.e(error.message);
      },
      (_) {
        logger.d('Logout success');
      },
    );
  }
}
