import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/theme/app_size.dart';
import 'package:testabd/core/utils/app_assets.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/auth/forgotpswd/forgot_pswd_cubit.dart';

class ForgotPswdScreen extends StatelessWidget {
  const ForgotPswdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ForgotPswdCubit>(),
      child: _View(),
    );
  }
}

class _View extends StatefulWidget {
  const _View({super.key});

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final _mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPswdCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Parolni tiklash')),
      body: SafeArea(
        child: BlocConsumer<ForgotPswdCubit, ForgotPswdState>(
          listener: (context, state) {
            // show message
            if (state.generalError != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.generalError!)));
            }

            // navigate back
            if (state.isSuccess) {
              context.pop();
            }
          },
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 36,
                children: [
                  /// LOGO
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(AppImages.logo),
                  ),

                  Text.rich(
                    TextSpan(
                      text: "Parolni unutdingizmi?\n",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: "Parolni tiklash uchun emailingizni kiriting",
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),

                  /// Username
                  Column(
                    children: [
                      TextFormField(
                        controller: _mailController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: AppDarkColors.textSecondary,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: state.emailError
                                  ? Colors.red
                                  : AppDarkColors.textSecondary,
                              width: AppSize.defBorderSize,
                            ),
                            borderRadius: 12.borderRadius,
                          ),
                        ),
                        onChanged: cubit.onEmailChanged,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          borderRadius: 16.borderRadius,
                          color: Colors.transparent,
                          onPressed: state.isLoading ? null : cubit.submit,
                          child: state.isLoading
                              ? ProgressView()
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
                                    child: Text(
                                      "Kod youborish",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16 * 4),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
