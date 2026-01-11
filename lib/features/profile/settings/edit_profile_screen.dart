import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/core/utils/language_service.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/settings/language_bottom_sheet.dart';
import 'package:testabd/router/app_router.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _View();
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit & Settings"), centerTitle: true),

      body: ListView(
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
            onTap: locator<AppSettingsService>().toggleDarkAndLight,
            trailing: StreamBuilder(
              stream: locator<AppSettingsService>().stream,
              builder: (_, snapshot) {
                return snapshot.data == ThemeMode.light
                    ? const Icon(Icons.light_mode_rounded)
                    : const Icon(Icons.dark_mode_rounded);
              },
            ),
          ),
          _ProfileTile(
            title: "Language",
            description:
                "Select your preferred language for this application, independent of your device's global settings.",
            onTap: () => showModalBottomSheet(
              context: navigatorKey.currentState!.context,
              backgroundColor: Colors.transparent,
              builder: (context) => const LanguageBottomSheet(),
            ),
            trailing: StreamBuilder(
              stream: locator<LanguageService>().stream,
              builder: (context, asyncSnapshot) {
                return CircleAvatar(
                  backgroundImage: AssetImage(
                    asyncSnapshot.data?.getFlag() ?? '',
                  ),
                  radius: 12,
                );
              },
            ),
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
