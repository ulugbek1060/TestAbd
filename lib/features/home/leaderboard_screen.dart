import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/theme/app_images.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/home/leaderboard_cubit.dart';
import 'package:testabd/features/home/leaderboard_state.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) => locator<LeaderboardCubit>()..loadLeaderboard(),
    child: _View(),
  );
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardCubit, LeaderboardState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              _LeaderboardAppBar(),
              SliverToBoxAdapter(child: TopThreeSection(state: state)),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                sliver: LeaderboardList(state:state),
              ),
            ],
          ),
        );
      },
    );
  }
}

/* ---------------- APP BAR ---------------- */
class _LeaderboardAppBar extends StatelessWidget {
  const _LeaderboardAppBar();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Leaderboard',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}

/* ---------------- TOP 3 PODIUM ---------------- */
class TopThreeSection extends StatelessWidget {
  final LeaderboardState state;

  const TopThreeSection({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: state
            .podiumForUI()
            .map(
              (e) => TopUser(
                rankAsset: AppImages.rank2,
                name: e.username,
                score: e.rankChangeValue,
              ),
            )
            .toList(),
      ),
    );
  }
}

class TopUser extends StatelessWidget {
  final String rankAsset;
  final String name;
  final int score;
  final bool big;

  const TopUser({
    super.key,
    required this.rankAsset,
    required this.name,
    required this.score,
    this.big = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: big ? 110 : 90,
          width: big ? 110 : 90,
          child: Image.asset(rankAsset),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.circle, size: 8, color: Colors.grey),
            const SizedBox(width: 4),
            Text(score.toString(), style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

/* ---------------- LEADERBOARD LIST ---------------- */
class LeaderboardList extends StatelessWidget {
  final LeaderboardState state;

  const LeaderboardList({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final item = state.leaderboard[index];
        return _ListTile(
          index: index,
          imageUrl: item.profileImage ?? '',
          username: item.username,
          testCount: item.testsSolved,
          onTap: () {},
          onFollowTap: () {},
        );
      }, childCount: state.leaderboard.length),
    );
  }
}

class _ListTile extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String username;
  final int testCount;

  final VoidCallback onTap;
  final VoidCallback onFollowTap;

  const _ListTile({
    super.key,
    required this.index,
    required this.imageUrl,
    required this.username,
    required this.testCount,
    required this.onTap,
    required this.onFollowTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Text(index.toString(), style: const TextStyle(color: Colors.grey)),
            const SizedBox(width: 12),
            CircleAvatar(radius: 18, backgroundColor: Colors.grey.shade700),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                username,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              testCount.toString(),
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 12),
            SizedBox(
              height: 32,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: true
                      ? Colors.grey.shade700
                      : const Color(0xFF3797EF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(false ? 'Unfollow' : 'Follow'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
