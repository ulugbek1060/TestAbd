import 'dart:convert';
import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testabd/l10n/generated/app_localizations.dart';
import 'package:testabd/main.dart';

import '../theme/app_images.dart';

extension LocaleX on Locale {
  String getLanCode(AppLocalizations l10n) {
    // get language code
    switch (languageCode) {
      case 'uz':
        return l10n.uz;
      case 'ru':
        return l10n.ru;
      case 'en':
        return l10n.en;
      default:
        return l10n.uz;
    }
  }

  // get language name
  String getDisplayName(AppLocalizations l10n) {
    switch (languageCode) {
      case 'uz':
        return l10n.languageUzbek;
      case 'ru':
        return l10n.languageRussian;
      case 'en':
        return l10n.languageEnglish;
      default:
        return l10n.languageUzbek;
    }
  }

  // get language flag
  String getFlag() {
    switch (languageCode) {
      case 'uz':
        return AppImages.fUzbek;
      case 'ru':
        return AppImages.fRussian;
      case 'en':
        return AppImages.fAmerica;
      default:
        return AppImages.fUzbek;
    }
  }

  Map<String, dynamic> toJson() => {
    "languageCode": languageCode,
    "countryCode": countryCode,
  };
}

extension _Map on Map<String, dynamic> {
  Locale fromJson() => Locale(this["languageCode"], this["countryCode"]);
}

List<Locale> get supportedLocales => [Locale('uz'), Locale('ru'), Locale('en')];

/// Interface for language local storage service.
abstract class LanguageService {
  Stream<Locale> get getStream;
  Locale get getLang;
  Future<bool> saveLanguage(Locale data);
}

@Singleton(as: LanguageService)
class LanguageServiceImpl implements LanguageService {
  static const _key = 'language_code';
  final SharedPreferences _prefs;
  final _subject = BehaviorSubject.seeded(supportedLocales[1]);

  LanguageServiceImpl(this._prefs) {
    _init();
  }

  _init() {
    try {
      final jsonStr = _prefs.getString(_key);
      if (jsonStr == null) return null;
      final jsonMap = jsonDecode(jsonStr) as Map<String, dynamic>;
      final languageData = jsonMap.fromJson();
      _subject.sink.add(languageData);
    } catch (e, stackTrace) {
      logger.e(e, stackTrace: stackTrace);
    }
  }

  @override
  Stream<Locale> get getStream => _subject.stream.distinct();

  @override
  Locale get getLang => _subject.value;

  @override
  Future<bool> saveLanguage(Locale data) async {
    try {
      final result = await _prefs.setString(_key, jsonEncode(data.toJson()));
      if (result) _subject.sink.add(data);
      return result;
    } catch (e, stackTrace) {
      logger.e(e, stackTrace: stackTrace);
      return false;
    }
  }
}
