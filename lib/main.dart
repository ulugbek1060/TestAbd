import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testabd/core/theme/app_theme.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/router/app_router.dart';

import 'core/services/session_service.dart';
import 'core/utils/language_service.dart';
import 'l10n/generated/app_localizations.dart';

var logger = Logger(printer: PrettyPrinter());

var loggerNoStack = Logger(printer: PrettyPrinter(methodCount: 0));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SessionService _sessionService;
  late StreamSubscription _sub;

  @override
  void initState() {
    _sessionService = locator<SessionService>();
    _sub = _sessionService.sessionStream.listen(
      (event) => event.when(
        unauthenticated: () => appRouter.go(AppRouter.login),
        authenticated: () => appRouter.go(AppRouter.home),
        guest: () => appRouter.go(AppRouter.home),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _sessionService.loadSession();
    });

    super.initState();
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Rx.combineLatest2(
        locator<AppSettingsService>().stream,
        locator<LanguageService>().stream,
        (mode, locale) => AppSettingsData(locale, mode),
      ),
      builder: (context, asyncSnapshot) => MaterialApp.router(
        title: 'TestAbd',
        theme: AppTheme.themeLight,
        darkTheme: AppTheme.themeDark,
        debugShowCheckedModeBanner: false,
        themeMode: asyncSnapshot.data?.mode,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: asyncSnapshot.data?.locale,
        routerDelegate: appRouter.routerDelegate,
        routeInformationParser: appRouter.routeInformationParser,
        routeInformationProvider: appRouter.routeInformationProvider,
      ),
    );
  }
}

class AppSettingsData {
  final Locale locale;
  final ThemeMode mode;

  AppSettingsData(this.locale, this.mode);
}
