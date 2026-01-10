import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/profile_state.dart';
import 'package:testabd/features/profile/settings/edit_profile_cubit.dart';
import 'package:testabd/features/profile/settings/edit_profile_state.dart';
import 'package:testabd/router/app_router.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<EditProfileCubit>(),
      child: _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditProfileCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit & Settings"), centerTitle: true),

      body: BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _Section(title: "Profile Information"),
              _ProfileTile(
                title: "Personal Information",
                description:
                    "Update your name, email address, phone number, and biographical details.",
                onTap: () => context.push(AppRouter.editUserData),
              ),

              SizedBox(height: 24),

              _Section(title: "Location"),
              _ProfileTile(
                title: "Regional Settings",
                description:
                    "Manage your country, state, and city for localized content and time zones.",
                onTap: () => context.push(AppRouter.editUserLocation),
              ),

              SizedBox(height: 24),

              _Section(title: "App Preferences"),
              _ProfileTile(
                title: "Theme Settings",
                description:
                    "Switch between light and dark modes or sync with your system preferences.",
                onTap: cubit.toggleMode,
                trailing: state.appModeState is DarkMode
                    ? const Icon(Icons.light_mode_rounded)
                    : const Icon(Icons.dark_mode_rounded),
              ),
              _ProfileTile(
                title: "Language",
                description:
                    "Select your preferred language for this application, independent of your device's global settings.",
                onTap: () {},
              ),

              SizedBox(height: 24),

              _Section(title: "Referral"),
              _ProfileTile(
                title: 'Refer & Earn',
                description:
                    'Invite your network and stack up credits for your next purchase.',
                onTap: () {},
                trailing: const Icon(Icons.history),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;

  const _Section({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: Colors.grey),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final String title;
  final String description;
  final Widget? trailing;
  final VoidCallback onTap;

  const _ProfileTile({
    required this.title,
    required this.description,
    required this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      subtitle: Text(
        description,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: Colors.grey),
      ),
      trailing: trailing ?? const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
