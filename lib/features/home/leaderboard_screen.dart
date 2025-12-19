import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_icons.dart';
import 'package:testabd/core/theme/app_images.dart';
import 'package:testabd/core/utils/formatters.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/domain/account/entities/leaderboard_model.dart';
import 'package:testabd/features/home/leaderboard_cubit.dart';
import 'package:testabd/features/home/leaderboard_state.dart';
import 'package:testabd/router/app_router.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) => locator<LeaderboardCubit>()..loadLeaderboard(),
    child: _View(),
  );
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_shouldLoadNextPage()) {
      context.read<LeaderboardCubit>().loadLeaderboard();
    }
  }

  bool _shouldLoadNextPage() {
    final state = context.read<LeaderboardCubit>().state;
    if (state.isLoading || state.isLastPage) return false;
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return maxScroll - currentScroll <= _scrollThreshold;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          /// appbar
          _LeaderboardAppBar(),

          /// top 3 podium
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            sliver: _TopThreeSection(),
          ),

          /// leaderboard
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            sliver: _LeaderboardList(),
          ),
        ],
      ),
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
class _TopThreeSection extends StatelessWidget {
  const _TopThreeSection();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<LeaderboardCubit, LeaderboardState>(
        builder: (context, state) {

          /// loading widget
          if (state.isLoading) return const LoadingWidget();

          /// empty widget
          if (state.leaderboard.isEmpty) return SizedBox.shrink();

          /// main widget
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: state.podiumForUI().mapIndexed(
                (index, e) => TopUser(
                  rankAsset: e.todayRank.podiumString,
                  name: capitalize(e.username),
                  score: e.coins,
                  big: index == 1,
                  key: ValueKey(e.username),
                ),
              ).toList(),
          );
        },
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
class _LeaderboardList extends StatelessWidget {
  const _LeaderboardList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LeaderboardCubit>();
    return BlocBuilder<LeaderboardCubit, LeaderboardState>(
      builder: (context, state) {
        return SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final item = state.leaderboard[index];
            return _ListTile(
              user: item,
              onTap: () => context.push(
                AppRouter.userProfileWithUsername(item.username),
              ),
              onFollowTap: () => cubit.followUser(item.id),
            );
          }, childCount: state.leaderboard.length),
        );
      },
    );
  }
}

class _ListTile extends StatelessWidget {
  final LeaderboardUser user;
  final VoidCallback onTap;
  final VoidCallback onFollowTap;

  const _ListTile({
    super.key,
    required this.user,
    required this.onTap,
    required this.onFollowTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Text(
                user.todayRank.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 12),
              ClipOval(
                child: CachedNetworkImage(
                  width: 36,
                  height: 36,
                  imageUrl: user.profileImage ?? '',
                  fit: BoxFit.cover,
                  placeholder: (_, __) =>
                      Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
                  errorWidget: (_, __, ___) =>
                      Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  user.username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
                height: 12,
                child: Image.asset(AppIcons.coin),
              ),
              const SizedBox(width: 4),
              Text(
                user.coins.toString(),
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
                    backgroundColor: user.isFollowing
                        ? Colors.grey.shade700
                        : const Color(0xFF3797EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: user.isLoading ? null : onFollowTap,
                  child: user.isLoading
                      ? const LoadingWidget()
                      : Text(user.isFollowing ? 'Unfollow' : 'Follow'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
``