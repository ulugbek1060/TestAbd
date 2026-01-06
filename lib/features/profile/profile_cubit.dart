import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/auth/auth_repository.dart';
import 'package:testabd/features/profile/profile_state.dart';
import 'package:testabd/main.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepository _authRepository;
  final AppSettingsService _appModeService;
  final AccountRepository _accountRepository;
  final AppMessageHandler _messageHandler;

  late final StreamSubscription _themeSubscription;
  late final StreamSubscription _myInfoSubscription;

  ProfileCubit(
    this._authRepository,
    this._accountRepository,
    this._appModeService,
    this._messageHandler,
  ) : super(ProfileState()) {
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

    // listen the my info subscription
    _myInfoSubscription = _accountRepository.userInfoStream.listen((event) {
      // fetch user connections
      fetchConnections(event?.id);

      // emit state
      emit(state.copyWith(myInfoModel: event));
    });
  }

  Future<void> refresh() async {
    fetchUserInfo();
  }

  @override
  Future<void> close() {
    _themeSubscription.cancel();
    _myInfoSubscription.cancel();
    return super.close();
  }

  Future<void> fetchUserInfo() async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    final result = await _accountRepository.fetchMyInfo();
    result.fold(
      (error) {
        _messageHandler.handleDialog(error);
      },
      (value) {
        // data fetched
      },
    );
    emit(state.copyWith(isLoading: false));
  }

  Future<void> fetchConnections(int? userId) async {
    if (userId == null) return;
    final result = await _accountRepository.getUserConnections(userId);
    result.fold(
      (error) {
        _messageHandler.handleDialog(error);
      },
      (value) {
        emit(state.copyWith(connections: value));
      },
    );
  }

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
