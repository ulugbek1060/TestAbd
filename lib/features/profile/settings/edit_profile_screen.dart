import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/services/session_service.dart';
import 'package:testabd/core/services/token_service.dart';
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
          // TelegramBotCard(),
          // SizedBox(height: 24),
          _Section(title: "Profile Information"),
          _ProfileTile(
            title: "Personal Information",
            description:
                "Update your name, email address, phone number, and biographical details.",
            onTap: () => context.push(AppRouter.personalInfo),
          ),

          SizedBox(height: 24),

          _Section(title: "Location"),
          _ProfileTile(
            title: "Regional Settings",
            description:
                "Manage your country, state, and city for localized content and time zones.",
            onTap: () => context.push(AppRouter.regionalInfo),
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
          SizedBox(height: 16),
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
              builder: (context, asyncSnapshot) => CircleAvatar(
                backgroundImage: AssetImage(
                  asyncSnapshot.data?.getFlag() ?? '',
                ),
                radius: 12,
              ),
            ),
          ),

          SizedBox(height: 24),

          _Section(title: "Referral"),
          _ProfileTile(
            title: 'Refer & Earn',
            description:
                'Invite your network and stack up credits for your next purchase.',
            onTap: () => context.push(AppRouter.referrals),
            trailing: const Icon(Icons.history),
          ),


          SizedBox(height: 24),

          _Section(title: "Account"),
          _ProfileTile(
            title: 'Logout',
            description: 'Sign out from your account',
            trailing: Icon(Icons.logout, color: Colors.red,),
            onTap: (){
              locator<SessionService>().clear();
              locator<TokenService>().clear();
            },
          ),

          // 100
          SizedBox(height: 100),
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

/// -------------------- Telegram card ----------------------
class TelegramBotCard extends StatelessWidget {
  const TelegramBotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF3B82F6), Color(0xFF9333EA), Color(0xFFEC4899)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 HEADER
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.smart_toy,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "🚀 Telegram Bot orqali boshqaring!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Profil ma'lumotlaringizni yanada qulay boshqaring",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // 🔹 FEATURES BOX
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "✨ Telegram botimizning afzalliklari:",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                _FeatureItem(icon: "🔥", text: "Tezkor profil yangilash"),
                _FeatureItem(
                  icon: "📱",
                  text: "Mobil qurilmada qulay foydalanish",
                ),
                _FeatureItem(icon: "🔔", text: "Real vaqtda bildirishnomalar"),
                _FeatureItem(icon: "⚡", text: "Bir necha sekundda sozlash"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // 🔹 BUTTON
          InkWell(
            borderRadius: BorderRadius.circular(32),
            onTap: () {
              // TODO: open telegram link
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                children: const [
                  Icon(Icons.smart_toy, color: Color(0xFF2563EB)),
                  SizedBox(width: 8),
                  Text(
                    "@TestAbdUzBot",
                    style: TextStyle(
                      color: Color(0xFF2563EB),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.open_in_new, color: Color(0xFF2563EB)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String icon;
  final String text;

  const _FeatureItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: const TextStyle(color: Colors.white70)),
          ),
        ],
      ),
    );
  }
}
