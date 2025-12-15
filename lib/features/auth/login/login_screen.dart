import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/theme/app_size.dart';
import 'package:testabd/core/utils/app_assets.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/auth/login/login_cubit.dart';
import 'package:testabd/router/app_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocProvider(create: (_) => locator<LoginCubit>(), child: const _View());
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.isSuccess) {
            context.go(AppRouter.home);
          }

          if (state.error != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error!)));
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 24,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 40),

                /// LOGO
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(AppImages.logo),
                ),

                const SizedBox(height: 24),

                Text.rich(
                  TextSpan(
                    text: "TestAbd'ga qo'shiling\n",
                    style: Theme.of(context).textTheme.titleSmall,
                    children: [
                      TextSpan(
                        text:
                            "Hisobingizni yaratish uchun ma'lumotlarni kiriting",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),

                /// WHITE CARD
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    /// Username input
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Foydalanuvchi nomini kiriting",
                        prefixIcon: const Icon(
                          Icons.mail_outline,
                          color: AppColors.textSecondary,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onChanged: cubit.onUsernameChanged,
                    ),
                    16.vSpace,

                    /// Password input
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Parol",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textSecondary,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            state.isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.textSecondary,
                          ),
                          onPressed: cubit.togglePasswordVisibility,
                        ),
                      ),
                      obscureText: !state.isPasswordVisible,
                      onChanged: cubit.onPasswordChanged,
                    ),
                    16.vSpace,

                    /// Forgot password link
                    InkWell(
                      onTap: () {
                        if (state.isLoading) return;
                        context.push(AppRouter.forgotPswd);
                      },
                      child: Text(
                        'Parolni unutdingizmi?',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(color: Colors.blue),
                      ),
                    ),
                    16.vSpace,

                    /// Login button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        borderRadius: 16.borderRadius,
                        color: Colors.transparent,
                        onPressed: state.isLoading ? null : cubit.login,
                        child: state.isLoading
                            ? const LoadingWidget()
                            : Ink(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF4F46E5),
                                      Color(0xFF7C3AED),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Kirish",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      SizedBox(width: 4),
                                      Icon(
                                        Icons.chevron_right_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ),
                    16.vSpace,

                    /// Register link
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: "Hisobingiz yo'qmi? ",
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                              text: "Ro'yxatdan o'tish",
                              style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  if (state.isLoading) return;
                                  context.push(AppRouter.register);
                                },
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),

                16.hSpace,

                /// Terms text
                Text.rich(
                  TextSpan(
                    text: "Kirish orqali siz bizning ",
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: "Foydalanish shartlari ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(text: "va "),
                      TextSpan(
                        text: "Maxfiylik siyosatiga",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(text: " rozilik bildirasiz"),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
