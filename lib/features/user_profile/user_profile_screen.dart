import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/utils/question_difficulty_x.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/user_profile/profile_connection_screen.dart';
import 'package:testabd/features/user_profile/user_profile_cubit.dart';
import 'package:testabd/features/user_profile/user_profile_state.dart';
import 'package:testabd/features/user_profile/widgets/block_card.dart';
import 'package:testabd/features/user_profile/widgets/question_card.dart';
import 'package:testabd/router/app_router.dart';

enum PageType { block, questions, books }

class UserProfileScreen extends StatelessWidget {
  final String username;

  const UserProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => locator<UserProfileCubit>(param1: username)
      ..loadUserDetail()
      ..loadBlocks()
      ..loadQuestions(),
    child: _View(),
  );
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
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserProfileCubit>();

    return Scaffold(
      backgroundColor: Colors.black,

      /// appBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: Text(
          cubit.username,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
      ),

      /// body
      body: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              /// Profile Header Section Profile image and following and followers
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      // Profile Picture
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 3),
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundImage: NetworkImage(
                            state.profile?.user?.profileImage ?? '',
                          ),
                        ),
                      ),

                      const SizedBox(width: 20),

                      // Following and Followers
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // followers
                            GestureDetector(
                              onTap: () => context.push(
                                AppRouter.profileConnectionWithUserId(
                                  userId: state.profile?.user?.id ?? 0,
                                  connectionType:
                                      ProfileConnectionEnum.followers.name,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    '${state.profile?.user?.followersCount ?? 0}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // following
                            GestureDetector(
                              onTap: () => context.push(
                                AppRouter.profileConnectionWithUserId(
                                  userId: state.profile?.user?.id ?? 0,
                                  connectionType:
                                      ProfileConnectionEnum.following.name,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    '${state.profile?.user?.followingCount ?? 0}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// User bio section
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.profile?.user?.getFullName ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '📚 Fantasy & Sci-Fi Lover | 🧠 Daily Quiz Master\n🎯 Learning Goals: Read 50 books this year',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '📍 Bookworm Academy',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),

              /// Action Buttons Follow and Message
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: state.followState.isLoading
                              ? null
                              : () => cubit.followAction(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                state.profile?.user?.isFollowing ?? false
                                ? Colors.transparent
                                : Colors.blue,
                            shape: RoundedRectangleBorder(
                              side: state.profile?.user?.isFollowing ?? false
                                  ? BorderSide(
                                      color: Colors.white.withAlpha(70),
                                    )
                                  : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: state.followState.isLoading
                              ? SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: ProgressView(),
                                )
                              : Text(
                                  state.profile?.user?.isFollowing ?? false
                                      ? "Followed"
                                      : "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade600),
                        ),
                        child: IconButton(
                          onPressed: () {
                            // TODO share action
                          },
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Statistics section
              SliverMainAxisGroup(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 6),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.analytics_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Quiz Performance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),

                  SliverPadding(
                    padding: const EdgeInsets.only(top: 6, left: 16, right: 16),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 1.4,
                          ),
                      delegate: SliverChildListDelegate([
                        _PerformanceItem(
                          title: 'Total Tests',
                          value:
                              state.profile?.stats?.totalTests?.toString() ??
                              '0',
                          icon: Icons.assessment_outlined,
                          color: Colors.blue,
                        ),
                        _PerformanceItem(
                          title: 'Correct Answers',
                          value:
                              state.profile?.stats?.correctAnswers
                                  ?.toString() ??
                              '0',
                          icon: Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        _PerformanceItem(
                          title: 'Wrong Answers',
                          value:
                              state.profile?.stats?.wrongAnswers?.toString() ??
                              '0',
                          icon: Icons.cancel_outlined,
                          color: Colors.red,
                        ),
                        _PerformanceItem(
                          title: 'Accuracy',
                          value:
                              state.profile?.stats?.accuracy?.toString() ?? '0',
                          icon: Icons.balance,
                          color: Colors.green,
                          progress: state.profile?.stats?.accuracy ?? 0,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),

              /// tabs
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  backgroundColor: Colors.black,
                  TabBar(
                    unselectedLabelColor: Colors.white,
                    onTap: (index) {
                      setState(() {
                        switch (index) {
                          case 0:
                            pageTye = PageType.block;
                          case 1:
                            pageTye = PageType.questions;
                          case 2:
                            pageTye = PageType.books;
                        }
                      });
                    },
                    controller: _tabController,
                    tabs: [
                      Tab(text: 'Bloklar'),
                      Tab(text: 'Savollar'),
                      Tab(text: 'Kitoblar'),
                    ],
                  ),
                ),
              ),

              /// ViewBlock
              _BlocksSection(
                key: _blockKey,
                state: state.topicsState,
                isEnabled: pageTye == PageType.block,
              ),

              /// ViewQuestions
              _QuestionsSection(
                key: _questionsKey,
                state: state.questionsState,
                isEnabled: pageTye == PageType.questions,
              ),

              /// ViewBooks
              _BooksSections(
                key: _booksKey,
                state: state.booksState,
                isEnabled: pageTye == PageType.books,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _BlocksSection extends StatelessWidget {
  final BlocksState state;
  final bool isEnabled;

  const _BlocksSection({
    super.key,
    required this.state,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    /// for disabled state
    if (!isEnabled) {
      return SliverToBoxAdapter(child: const SizedBox.shrink());
    }

    /// loading state
    if (state.isLoading) {
      return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            return Center(child: CircularProgressIndicator());
          }, childCount: 4),
        ),
      );
    }

    /// for active state
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          childAspectRatio: 1.0,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          final topic = state.topics[index];
          return QuestionCollectionCard(
            title: topic.title ?? '',
            description: topic.description ?? '',
            questionCount: topic.totalQuestions ?? 0,
            createdAt: topic.createdAt ?? DateTime.now(),
            onTap: () => context.push(
              AppRouter.blockQuestionsWithBlockId(topic.id ?? 0),
            ),
          );
        }, childCount: state.topics.length),
      ),
    );
  }
}

class _QuestionsSection extends StatelessWidget {
  final QuestionsState state;
  final bool isEnabled;

  const _QuestionsSection({
    super.key,
    required this.state,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    /// for disabled state
    if (!isEnabled) {
      return SliverToBoxAdapter(child: const SizedBox.shrink());
    }

    /// loading state
    if (state.isLoading) {
      return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            return Center(child: CircularProgressIndicator());
          }, childCount: 4),
        ),
      );
    }

    /// for active state
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          final question = state.questions[index];
          return QuestionCard(
            title: question.testTitle ?? '',
            description: question.testDescription ?? '',
            createdAt: question.createdAt,
            correctAnswers: question.correctCount,
            wrongAnswers: question.wrongCount,
            difficulty: question.difficultyPercentage.toDifficulty(),
            onTap: () => context.push(
              AppRouter.questionDetailWithQuestionId(question.id ?? -1),
            ),
          );
        }, childCount: state.questions.length),
      ),
    );
  }
}

class _BooksSections extends StatelessWidget {
  final BooksState state;
  final bool isEnabled;

  const _BooksSections({
    super.key,
    required this.state,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    /// for disabled state
    if (!isEnabled) {
      return SliverToBoxAdapter(child: const SizedBox.shrink());
    }

    /// loading state
    if (state.isLoading) {
      return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            return Center(child: CircularProgressIndicator());
          }, childCount: 4),
        ),
      );
    }

    /// coming soon
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Center(
          child: Text(
            "Coming soon 🎉",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

class _PerformanceItem extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
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
        color: Colors.grey.shade900,
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
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withAlpha(50),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color),
              ),
              const Spacer(),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
          if (progress != null)
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade800,
              color: color,
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
