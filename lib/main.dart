import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:testabd/core/theme/app_theme.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/router/app_router.dart';

import 'core/services/session_service.dart';

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

    WidgetsBinding.instance.addPostFrameCallback((_){
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
      stream: locator<AppModeService>().stream,
      builder: (context, asyncSnapshot) {
        return MaterialApp.router(
          title: 'TestAbd',
          theme: AppTheme.themeLight,
          darkTheme: AppTheme.themeDark,
          debugShowCheckedModeBanner: false,
          themeMode: asyncSnapshot.data,
          routerDelegate: appRouter.routerDelegate,
          routeInformationParser: appRouter.routeInformationParser,
          routeInformationProvider: appRouter.routeInformationProvider,
        );
      }
    );
  }
}
