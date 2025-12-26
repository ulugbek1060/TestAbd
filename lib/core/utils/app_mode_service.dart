import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class AppModeService {
  Stream<ThemeMode> get stream;
  ThemeMode get current;
  void changeMode(ThemeMode mode);
}

@LazySingleton(as: AppModeService)
class AppModeServiceImpl implements AppModeService {
  final SharedPreferences _prefs;

  static const _modeKey = 'mode';

  final BehaviorSubject<ThemeMode> _modeSubject =
  BehaviorSubject<ThemeMode>();

  AppModeServiceImpl(this._prefs) {
    _init();
  }

  void _init() {
    final stored = _prefs.getString(_modeKey);

    final mode = ThemeMode.values.firstWhere(
          (e) => e.name == stored,
      orElse: () => ThemeMode.system,
    );

    _modeSubject.add(mode);
  }

  @override
  Stream<ThemeMode> get stream => _modeSubject.stream;

  @override
  ThemeMode get current => _modeSubject.value;

  @override
  void changeMode(ThemeMode mode) {
    if (_modeSubject.value == mode) return;

    _prefs.setString(_modeKey, mode.name);
    _modeSubject.add(mode);
  }
}
