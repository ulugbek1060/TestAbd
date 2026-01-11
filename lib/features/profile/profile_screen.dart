import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_icons.dart';
import 'package:testabd/core/theme/app_images.dart';
import 'package:testabd/core/utils/connections_enum.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/profile_cubit.dart';
import 'package:testabd/features/profile/profile_state.dart';
import 'package:testabd/router/app_router.dart';

enum PageType { block, questions, books }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<ProfileCubit>()..fetchUserInfo(),
      child: const _View(),
    );
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late var pageTye = PageType.block;
  late var _blockKey;
  late var _questionsKey;
  late var _booksKey;

  @override
  void initState() {
    super.initState();
    _blockKey = PageStorageKey('blocksSection');
    _questionsKey = PageStorageKey('questionsSection');
    _booksKey = PageStorageKey('booksSection');
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: cubit.refresh,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Text(
                '@${state.myInfoModel?.username}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // actions: [
              //
              //   Icon(Icons.more_vert),
              //   SizedBox(width: 12),
              // ],
            ),
            body: state.isLoading
                ? const Center(child: ProgressView())
                : CustomScrollView(
                    slivers: [
                      /// Header
                      HeaderSection(
                        imageUrl: state.myInfoModel?.profileImage ?? '',
                        tests:
                            state.myInfoModel?.testsSolved?.toString() ?? '0',
                        followers: state
                            .userConnectionsState
                            .connections
                            .followers
                            .length
                            .toString(),
                        followings: state
                            .userConnectionsState
                            .connections
                            .following
                            .length
                            .toString(),
                        fullname:
                            '${state.myInfoModel?.firstName} ${state.myInfoModel?.lastName}',
                        bio: state.myInfoModel?.bio ?? '',
                        onTestsTap: () {},
                        onFollowersTap: () => context.push(
                          AppRouter.profileConnectionWithUserId(
                            connectionType: ConnectionsEnum.followers.name,
                          ),
                        ),
                        onFollowingTap: () => context.push(
                          AppRouter.profileConnectionWithUserId(
                            connectionType: ConnectionsEnum.following.name,
                          ),
                        ),
                        onEditProfileTap: () =>
                            context.push(AppRouter.editProfile),
                      ),

                      /// Statistics Cards
                      SubHeaderSection(
                        coins: state.myInfoModel?.coins?.toString() ?? '0',
                        correctAnswers:
                            state.myInfoModel?.correctCount?.toString() ?? '0',
                        wrongAnswers:
                            state.myInfoModel?.wrongCount?.toString() ?? '0',
                        accuracy:
                            state.myInfoModel?.findAccuracy().toString() ?? '0',
                        accuracyProgress:
                            state.myInfoModel?.findAccuracy() ?? 0,
                        onQuestionsBookmarkTap: () =>
                            context.push(AppRouter.bookmarkQuestions),
                      ),

                      /// tabBar
                      TabsSection(
                        pageTye: pageTye,
                        onTabChange: (index) {
                          setState(() {
                            pageTye = PageType.values[index];
                          });
                        },
                        controller: _tabController,
                      ),

                      // tabs
                      QuestionsBlockSection(
                        key: _blockKey,
                        isEnabled: pageTye == PageType.block,
                      ),

                      MyQuestionsSection(
                        key: _questionsKey,
                        isEnabled: pageTye == PageType.questions,
                      ),

                      MyBooksSection(
                        key: _booksKey,
                        isEnabled: pageTye == PageType.books,
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class HeaderSection extends StatelessWidget {
  final String imageUrl;
  final String followers;
  final String followings;
  final String tests;
  final String fullname;
  final String bio;
  final VoidCallback onFollowersTap;
  final VoidCallback onFollowingTap;
  final VoidCallback onTestsTap;
  final VoidCallback onEditProfileTap;

  const HeaderSection({
    super.key,
    required this.imageUrl,
    required this.followers,
    required this.followings,
    required this.tests,
    required this.fullname,
    required this.bio,
    required this.onFollowersTap,
    required this.onFollowingTap,
    required this.onTestsTap,
    required this.onEditProfileTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.purple, width: 3),
                    gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: ClipOval(
                    child: CachedNetworkImage(
                      width: 46,
                      height: 46,
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => Image.asset(
                        AppImages.defaultAvatar,
                        fit: BoxFit.cover,
                      ),
                      errorWidget: (_, __, ___) => Image.asset(
                        AppImages.defaultAvatar,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                /// Stats
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // _StatItem(
                      //   title: "Tests",
                      //   value: tests,
                      //   onTap: onTestsTap,
                      // ),
                      _StatItem(
                        title: "Followers",
                        value: followers,
                        onTap: onFollowersTap,
                      ),
                      _StatItem(
                        title: "Following",
                        value: followings,
                        onTap: onFollowingTap,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // fullname bui section
            Text(
              'Full name: $fullname',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Bio: $bio',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),

            // edit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: onEditProfileTap,
                child: Text(
                  'Edit profile',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubHeaderSection extends StatelessWidget {
  final String coins;
  final String correctAnswers;
  final String wrongAnswers;
  final String accuracy;
  final double accuracyProgress;
  final VoidCallback onQuestionsBookmarkTap;

  const SubHeaderSection({
    super.key,
    required this.accuracy,
    required this.coins,
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.accuracyProgress,
    required this.onQuestionsBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 16,
            right: 16,
            bottom: 8,
          ),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: [
                Icon(
                  Icons.analytics_rounded,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
                ),
                const SizedBox(width: 8),
                Text(
                  'Statistics',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withAlpha(120),
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.only(top: 6, left: 16, right: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.5,
            ),
            delegate: SliverChildListDelegate([
              _PerformanceItem(
                title: 'Coins',
                value: coins,
                icon: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.yellow.withAlpha(50),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(AppIcons.coin),
                ),
                color: Colors.blue,
              ),
              _PerformanceItem(
                title: 'Correct Answers',
                value: correctAnswers,
                icon: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green.withAlpha(50),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check_circle, color: Colors.green),
                ),
                color: Colors.green,
              ),
              _PerformanceItem(
                title: 'Wrong Answers',
                value: wrongAnswers,
                icon: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red.withAlpha(50),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.cancel, color: Colors.red),
                ),
                color: Colors.red,
              ),
              _PerformanceItem(
                title: 'Accuracy',
                value: accuracy,
                icon: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange.withAlpha(50),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.line_weight, color: Colors.orange),
                ),
                color: Colors.orange,
                progress: accuracyProgress,
              ),
            ]),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
          sliver: SliverToBoxAdapter(
            child: GestureDetector(
              onTap: onQuestionsBookmarkTap,
              child: _PerformanceItem(
                title: 'Questions Bookmark',
                value: '12',
                icon: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha(50),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.bookmark, color: Colors.blue),
                ),
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TabsSection extends StatelessWidget {
  final PageType pageTye;
  final void Function(int index) onTabChange;
  final TabController controller;

  const TabsSection({
    super.key,
    required this.pageTye,
    required this.onTabChange,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        TabBar(
          unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
          labelColor: Theme.of(context).colorScheme.onSurface,
          onTap: onTabChange,
          controller: controller,
          tabs: [
            Tab(text: 'Bloklar'),
            Tab(text: 'Savollar'),
            Tab(text: 'Kitoblar'),
          ],
        ),
      ),
    );
  }
}

/// ---------------- Questions block section ----------------
class QuestionsBlockSection extends StatelessWidget {
  final bool isEnabled;

  const QuestionsBlockSection({super.key, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) return const SliverToBoxAdapter(child: SizedBox.shrink());
    return SliverFillRemaining(child: Center(child: Text('Questions block')));
  }
}

/// ---------------- My questions section ----------------
class MyQuestionsSection extends StatelessWidget {
  final bool isEnabled;

  const MyQuestionsSection({super.key, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) return const SliverToBoxAdapter(child: SizedBox.shrink());
    return SliverFillRemaining(child: Center(child: Text('My questions')));
  }
}

/// ---------------- My books section ----------------
class MyBooksSection extends StatelessWidget {
  final bool isEnabled;

  const MyBooksSection({super.key, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) return const SliverToBoxAdapter(child: SizedBox.shrink());
    return SliverFillRemaining(child: Center(child: Text('My books')));
  }
}

/// ---------------- COMPONENTS ----------------
class _StatItem extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onTap;

  const _StatItem({
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}

class _PerformanceItem extends StatelessWidget {
  final String title;
  final String value;
  final Widget icon;
  final Color color;
  final double? progress;

  const _PerformanceItem({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              icon,
              const Spacer(),
              Text(
                value,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(title, style: TextStyle(color: Colors.grey, fontSize: 14)),
          if (progress != null)
            LinearProgressIndicator(
              value: (progress ?? 1) / 100,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              backgroundColor: Color(0xffD6D6D6),
              borderRadius: BorderRadius.circular(4),
            ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;

  _SliverAppBarDelegate(this._tabBar, {required this.backgroundColor});

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) => Container(color: backgroundColor, child: _tabBar);

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return true;
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
