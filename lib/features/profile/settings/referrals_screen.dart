import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/settings/referrals_cubit.dart';
import 'package:testabd/features/profile/settings/referrals_state.dart';

class ReferralsScreen extends StatelessWidget {
  const ReferralsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ReferralsCubit>()
        ..fetchReferrals(),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReferralsCubit, ReferralsState>(
      buildWhen: (s1, s2) => s1.isLoading != s2.isLoading,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Referral Dasturi"),
            centerTitle: true,
          ),
          body: state.isLoading
              ? ProgressView()
              : ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    _HeaderText(),
                    SizedBox(height: 16),

                    _StatsRow(),
                    SizedBox(height: 24),

                    _ReferralCodeCard(),
                    SizedBox(height: 24),

                    _ComingSoonCard(),
                    SizedBox(height: 24),

                    _SectionTitle(title: "Taklif qilingan foydalanuvchilar"),
                    _ReferralHistoryList(),
                  ],
                ),
        );
      },
    );
  }
}

class _HeaderText extends StatelessWidget {
  const _HeaderText();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Referral Dasturi",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "Do'stlaringizni taklif qiling va bonus oling!",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _StatCard(
            title: "Jami",
            value: "0",
            colors: [Color(0xFF3B82F6), Color(0xFF9333EA)],
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _StatCard(
            title: "Bu oy",
            value: "0",
            colors: [Color(0xFF22C55E), Color(0xFF16A34A)],
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final List<Color> colors;

  const _StatCard({
    required this.title,
    required this.value,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(colors: colors),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white70)),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReferralCodeCard extends StatelessWidget {
  const _ReferralCodeCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.onSurfaceColor(context),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "@TestAbdUzBot orqali olishingiz mumkin",
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.copy, color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.green),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ComingSoonCard extends StatelessWidget {
  const _ComingSoonCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.onSurfaceColor(context),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orange),
      ),
      child: Row(
        children: const [
          Icon(Icons.card_giftcard, color: Colors.orange),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "Referral funksiyasi tez orada Telegram bot orqali boshqariladi.",
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ReferralHistoryList extends StatelessWidget {
  const _ReferralHistoryList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: AppColors.onSurfaceColor(context),
            borderRadius: BorderRadius.circular(14),
          ),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              "User ${index + 1}",
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: const Text(
              "Ro‘yxatdan o‘tdi",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: const Text(
              "+0 so‘m",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    );
  }
}
