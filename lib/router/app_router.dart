import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/features/auth/forgotpswd/forgot_pswd_screen.dart';
import 'package:testabd/features/auth/login/login_screen.dart';
import 'package:testabd/features/auth/register/register_screen.dart';
import 'package:testabd/features/home/home_screen.dart';
import 'package:testabd/features/home/leaderboard_screen.dart';
import 'package:testabd/features/init/InitialScreen.dart';
import 'package:testabd/features/profile/profile_screen.dart';
import 'package:testabd/features/root/shell_screen.dart';
import 'package:testabd/features/user_profile/block_questions_screen.dart';
import 'package:testabd/features/user_profile/profile_connection_screen.dart';
import 'package:testabd/features/user_profile/question_detail_screen.dart';
import 'package:testabd/features/user_profile/user_profile_screen.dart';

abstract class AppRouter {
  static const initial = '/';
  static const login = '/login';
  static const forgotPswd = '/forgot_password';
  static const register = '/register';
  static const home = '/home';
  static const profile = '/profile';
  static const userProfile = '/user_profile/:username';
  static const leaderboard = '/leaderboard';

  static String userProfileWithUsername(String username) =>
      '/user_profile/$username';

  static const profileConnection =
      '/profile_connection/:user_id/:connection_type';

  static String profileConnectionWithUserId({
    required int userId,
    required String connectionType,
  }) => '/profile_connection/$userId/$connectionType';

  static const questionDetail = '/question_detail/:questionId';

  static String questionDetailWithQuestionId(int questionId) =>
      '/question_detail/$questionId';

  static const blockQuestions = '/block_questions/:blockId';

  static String blockQuestionsWithBlockId(int blockId) =>
      '/block_questions/$blockId';
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
        return CupertinoPage(child: UserProfileScreen(username: username));
      },
    ),

    GoRoute(
      path: AppRouter.profileConnection,
      pageBuilder: (context, state) {
        final userId = state.pathParameters['user_id']!;
        final connectionType = state.pathParameters['connection_type']!;
        return CupertinoPage(
          child: ProfileConnectionScreen(
            userId: int.tryParse(userId) ?? -1,
            connectionType: ProfileConnectionEnum.fromString(connectionType),
          ),
        );
      },
    ),

    GoRoute(
      path: AppRouter.questionDetail,
      pageBuilder: (context, state) {
        final questionId = state.pathParameters['questionId']!;
        return CupertinoPage(
          child: QuestionDetailScreen(
            questionId: int.tryParse(questionId) ?? -1,
          ),
        );
      },
    ),

    GoRoute(
      path: AppRouter.blockQuestions,
      pageBuilder: (context, state) {
        final blockId = state.pathParameters['blockId']!;
        return CupertinoPage(
          child: BlockQuestionsScreen(blockId: int.tryParse(blockId) ?? -1),
        );
      },
    ),
    GoRoute(
      path: AppRouter.leaderboard,
      pageBuilder: (context, state) {
        return CupertinoPage(child: LeaderboardScreen());
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
