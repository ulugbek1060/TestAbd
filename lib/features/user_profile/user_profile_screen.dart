import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/utils/formatters.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/user_profile/user_profile_cubit.dart';
import 'package:testabd/features/user_profile/user_profile_state.dart';

class UserProfileScreen extends StatelessWidget {
  final String username;

  const UserProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        locator<UserProfileCubit>(param1: username)..loadUserDetail(),
    child: _View(),
  );
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserProfileCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // space
            const SliverToBoxAdapter(child: SizedBox(height: 16)),

            // sliver app bar
            BlocBuilder<UserProfileCubit, UserProfileState>(
              builder: (context, state) {
                return SliverAppBar(
                  title: Text(
                    state.profile?.user?.username ?? '',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              },
            ),

            // space
            const SliverToBoxAdapter(child: SizedBox(height: 4)),

            // user info
            BlocBuilder<UserProfileCubit, UserProfileState>(
              builder: (context, state) {
                return SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// image and followers
                      Row(
                        children: [
                          // space
                          const SizedBox(width: 16),

                          // image
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: ClipOval(
                                child: CachedNetworkImage(
                                  imageUrl:
                                      state.profile?.user?.profileImage ?? '',
                                  fit: BoxFit.cover,
                                  placeholder: (_, __) => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  errorWidget: (_, __, ___) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),

                          // followers and following
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // followers
                                Column(
                                  children: [
                                    Text(
                                      state.profile?.user?.getFollowersCount ??
                                          '',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleMedium,
                                    ),
                                    Text('Followers'),
                                  ],
                                ),

                                // following
                                Column(
                                  children: [
                                    Text(
                                      state.profile?.user?.getFollowersCount ??
                                          '',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleMedium,
                                    ),
                                    Text('Following'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // firstname lastname
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 16.0,
                          right: 16.0,
                        ),
                        child: Text(
                          '${state.profile?.user?.firstName} ${state.profile?.user?.lastName}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),

                      // username
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text(
                          '@${state.profile?.user?.username}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),

                      // joined date
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_rounded, size: 12),
                            const SizedBox(width: 4),
                            Text(
                              'Joinde ${formatDate(state.profile?.user?.joinDate)}',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),

                      // level
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                        child: Row(
                          children: [
                            Icon(Icons.star, size: 12),
                            const SizedBox(width: 4),
                            Text(
                              state.profile?.user?.level ?? '',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            // statistics sections
            BlocBuilder<UserProfileCubit, UserProfileState>(
              builder: (context, state) {
                return SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // space
                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Icon(Icons.stacked_bar_chart),
                            const SizedBox(width: 8),
                            Text(
                              'Statistics',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),

                        ListTile(title: Text('Total Tests')),
                        ListTile(title: Text('Correct Answers')),
                        ListTile(title: Text('Wrong Answers')),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
