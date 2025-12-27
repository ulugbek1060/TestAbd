import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/profile_cubit.dart';
import 'package:testabd/features/profile/profile_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<ProfileCubit>(),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text(
              "@devmaverick",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: cubit.toggleMode,
                icon: state.appModeState is DarkMode
                    ? const Icon(Icons.light_mode_rounded)
                    : const Icon(Icons.dark_mode_rounded),
              ),
              Icon(Icons.more_vert),
              SizedBox(width: 12),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                /// Header
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                      const SizedBox(width: 20),

                      /// Stats
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            _StatItem(title: "Tests", value: "175"),
                            _StatItem(title: "Followers", value: "0"),
                            _StatItem(title: "Following", value: "2"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// Bio
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Beginner Developer 👨‍💻",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        "Learning • Practicing • Growing",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                /// Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(child: _ActionButton(text: "Edit profile")),
                      const SizedBox(width: 8),
                      Expanded(child: _ActionButton(text: "Share profile")),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                /// Statistics Cards
                _InfoCard(
                  title: "Savollarga javob",
                  leftLabel: "To'g'ri",
                  leftValue: "60",
                  rightLabel: "Xato",
                  rightValue: "115",
                ),

                _InfoCard(
                  title: "Aniqlik darajasi",
                  centerValue: "34.29%",
                  centerColor: Colors.green,
                ),

                _InfoCard(
                  title: "Haftalik faollik",
                  leftLabel: "Jami",
                  leftValue: "2.0",
                  rightLabel: "O'rtacha",
                  rightValue: "0.3",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// ---------------- COMPONENTS ----------------
class _StatItem extends StatelessWidget {
  final String title;
  final String value;

  const _StatItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;

  const _ActionButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.surface),
      ),
      child: Text(
        text,
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String? leftLabel;
  final String? leftValue;
  final String? rightLabel;
  final String? rightValue;
  final String? centerValue;
  final Color? centerColor;

  const _InfoCard({
    required this.title,
    this.leftLabel,
    this.leftValue,
    this.rightLabel,
    this.rightValue,
    this.centerValue,
    this.centerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

