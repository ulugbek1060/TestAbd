import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/features/root/shell_screen.dart';
import 'package:testabd/features/auth/login/login_screen.dart';
import 'package:testabd/features/auth/register/register_screen.dart';
import 'package:testabd/features/auth/forgotpswd/forgot_pswd_screen.dart';
import 'package:testabd/features/init/InitialScreen.dart';
import 'package:testabd/features/home/home_screen.dart';
import 'package:testabd/features/profile/profile_screen.dart';
import 'package:testabd/features/user_profile/user_profile_screen.dart';


abstract class AppRouter {
  static const initial = '/';
  static const login = '/login';
  static const forgotPswd = '/forgot_password';
  static const register = '/register';
  static const home = '/home';
  static const profile = '/profile';
  static const userProfile = '/user_profile/:username';
  static String userProfileWithUsername(String username) =>
      '/user_profile/$username';
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRouter.initial,
      pageBuilder: (context, state) =>
          CupertinoPage(child: const InitialScreen()),
    ),
    GoRoute(
      path: AppRouter.login,
      pageBuilder: (context, state) =>
          CupertinoPage(child: const LoginScreen()),
    ),
    GoRoute(
      path: AppRouter.forgotPswd,
      pageBuilder: (context, state) =>
          CupertinoPage(child: const ForgotPswdScreen()),
    ),
    GoRoute(
      path: AppRouter.register,
      pageBuilder: (context, state) =>
          CupertinoPage(child: const RegisterScreen()),
    ),
    GoRoute(
      path: AppRouter.userProfile,
      pageBuilder: (context, state) {
        final username = state.pathParameters['username']!;
        return CupertinoPage(
          child: UserProfileScreen(username: username),
        );
      },
    ),
    StatefulShellRoute(
      parentNavigatorKey: navigatorKey,
      navigatorContainerBuilder: (_, navShell, children) =>
          ShellScreen(navShell: navShell, children: children),
      builder: (_, __, child) => child,
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.home,
              builder: (_, state) => const HomeScreen(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.profile,
              builder: (_, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);