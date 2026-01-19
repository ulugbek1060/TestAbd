import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/theme/app_images.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/domain/account/entities/referral_list_model.dart';
import 'package:testabd/features/profile/settings/referrals_cubit.dart';
import 'package:testabd/features/profile/settings/referrals_state.dart';

class ReferralsScreen extends StatelessWidget {
  const ReferralsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ReferralsCubit>()..fetchReferrals(),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReferralsCubit, ReferralsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Referral Dasturi"),
            centerTitle: true,
          ),
          body: state.isLoading
              ? const ProgressView()
              : CustomScrollView(
                  slivers: [
                    _HeaderText(),
                    const SliverToBoxAdapter(child: SizedBox(height: 16)),

                    _StatsRow(),
                    const SliverToBoxAdapter(child: SizedBox(height: 24)),

                    const _SectionTitle(
                      title: "Taklif qilingan foydalanuvchilar",
                    ),
                    _ReferralHistoryList(state.referrals?.results ?? []),
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
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Column(
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
        ),
      ),
    );
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
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
        ),
      ),
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

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _ReferralHistoryList extends StatelessWidget {
  const _ReferralHistoryList(this.list);

  final List<ReferralResult> list;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: Text(
            "No referrals",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final user = list[index];
          return _Item(
            username: user.referred?.username ?? '',
            profileImage: user.referred?.profileImage ?? '',
          );
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String username;
  final String profileImage;

  const _Item({super.key, required this.username, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.onSurfaceColor(context),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: CachedNetworkImage(
          width: 36,
          height: 36,
          imageUrl: profileImage,
          fit: BoxFit.cover,
          placeholder: (_, __) =>
              Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
          errorWidget: (_, __, ___) =>
              Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
        ),
        title: Text(
          username,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
