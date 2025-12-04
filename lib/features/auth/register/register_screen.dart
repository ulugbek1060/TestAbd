import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/theme/app_size.dart';
import 'package:testabd/core/utils/app_assets.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/auth/register/register_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<RegisterCubit>(),
      child: _View(),
    );
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _referralCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Royxatdan o'tish")),
      body: SafeArea(
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {

            // error message
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error!)),
              );
            }

            // navigate back
            if (state.isSuccess) {
              context.pop();
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 12),

                  /// LOGO
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(AppImages.logo),
                  ),

                  const SizedBox(height: 28),

                  Text.rich(
                    TextSpan(
                      text: "TestAbd'ga qo'shiling\n",
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                        TextSpan(
                          text:
                              "Hisobingizni yaratish uchun ma'lumotlarni kiriting",
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 28),

                  /// Username
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.person_outline_rounded,
                        color: AppColors.mediumEmphasized,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: state.usernameError
                              ? Colors.red
                              : AppColors.lowEmphasized,
                          width: AppSize.defBorderSize,
                        ),
                        borderRadius: 12.borderRadius,
                      ),
                    ),
                    onChanged: cubit.setUsername,
                  ),
                  const SizedBox(height: 16),

                  /// Email
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColors.mediumEmphasized,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: state.emailError
                              ? Colors.red
                              : AppColors.lowEmphasized,
                          width: AppSize.defBorderSize,
                        ),
                        borderRadius: 12.borderRadius,
                      ),
                    ),
                    onChanged: cubit.setEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),

                  /// Password
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: AppColors.mediumEmphasized,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.isPswdVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.highEmphasized,
                        ),
                        onPressed: cubit.togglePswdVisibility,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: state.passwordError
                              ? Colors.red
                              : AppColors.lowEmphasized,
                          width: AppSize.defBorderSize,
                        ),
                        borderRadius: 12.borderRadius,
                      ),
                    ),
                    obscureText: !state.isPswdVisible,
                    onChanged: cubit.setPassword,
                  ),
                  const SizedBox(height: 16),

                  /// Confirm Password
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: AppColors.mediumEmphasized,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.isConfirmPswdVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.highEmphasized,
                        ),
                        onPressed: cubit.toggleConfirmPswdVisibility,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: state.confirmPasswordError
                              ? Colors.red
                              : AppColors.lowEmphasized,
                          width: AppSize.defBorderSize,
                        ),
                        borderRadius: 12.borderRadius,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: state.confirmPasswordError
                              ? Colors.red
                              : AppColors.lowEmphasized,
                          width: AppSize.defBorderSize,
                        ),
                        borderRadius: 12.borderRadius,
                      ),
                    ),
                    obscureText: !state.isConfirmPswdVisible,
                    onChanged: cubit.setConfirmPassword,
                  ),
                  const SizedBox(height: 8),

                  /// has referral code
                  Row(
                    children: [
                      Checkbox(
                        value: state.hasReferral,
                        onChanged: cubit.toggleReferral,
                        activeColor: Theme.of(context).colorScheme.secondary,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      Text('Referral code'),
                    ],
                  ),
                  const SizedBox(height: 8),

                  /// referral code
                  if (state.hasReferral)
                    TextFormField(
                      controller: _referralCodeController,
                      decoration: InputDecoration(
                        hintText: "Referral code",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: state.referralCodeError
                                ? Colors.red
                                : AppColors.lowEmphasized,
                            width: AppSize.defBorderSize,
                          ),
                          borderRadius: 12.borderRadius,
                        ),
                      ),
                      onChanged: cubit.setReferralCode,
                    ),

                  Spacer(),

                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      borderRadius: 16.borderRadius,
                      color: Colors.transparent,
                      onPressed: state.isLoading ? null : cubit.register,
                      child: state.isLoading
                          ? LoadingWidget()
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
                                      "Royxatdan o'tish",
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
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
