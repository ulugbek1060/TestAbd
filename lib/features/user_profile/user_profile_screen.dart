import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/user_profile/block_card.dart';
import 'package:testabd/features/user_profile/user_profile_cubit.dart';
import 'package:testabd/features/user_profile/user_profile_state.dart';

class UserProfileScreen extends StatelessWidget {
  final String username;

  const UserProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => locator<UserProfileCubit>(param1: username)
      ..loadUserDetail()
      ..loadTopics(),
    child: _View(),
  );
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

enum PageType { block, questions, books }

class _ViewState extends State<_View> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late var pageTye = PageType.block;

  @override
  void initState() {
    super.initState();
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
                            // following
                            Column(
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

                            // followers
                            Column(
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
                          onPressed: () {
                            // TODO follow action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            // TODO message action
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey.shade600),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: const Text(
                            'Message',
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
                    // labelColor: Theme.of(context).colorScheme.secondary,
                    // indicatorColor: Theme.of(context).colorScheme.secondary,
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
              if (pageTye == PageType.block)
                SliverPadding(
                  padding: const EdgeInsets.all(16),
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
                      final topic = state.topicsState.topics[index];
                      return QuestionCollectionCard(
                        title: topic.title ?? '',
                        description: topic.description ?? '',
                        questionCount: topic.totalQuestions ?? 0,
                        createdAt: topic.createdAt ?? DateTime.now(),
                      );
                      // return Container(
                      //   decoration: BoxDecoration(
                      //     color: AppColors.outlinedButtonBorder,
                      //     borderRadius: BorderRadius.circular(12),
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(12.0),
                      //     child: Column(
                      //       mainAxisSize: MainAxisSize.max,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: .start,
                      //       spacing: 8,
                      //       children: [
                      //         Text(
                      //           '${topic.title}',
                      //           style: Theme.of(context).textTheme.titleSmall,
                      //           maxLines: 2,
                      //           overflow: TextOverflow.ellipsis,
                      //         ),
                      //         Text(
                      //           '${topic.description}',
                      //           maxLines: 2,
                      //           overflow: TextOverflow.ellipsis,
                      //         ),
                      //         Spacer(),
                      //         Text(
                      //           '${topic.totalQuestions} savollar',
                      //           maxLines: 1,
                      //           overflow: TextOverflow.ellipsis,
                      //         ),
                      //         Text(
                      //           formatDate(topic.createdAt),
                      //           maxLines: 1,
                      //           overflow: TextOverflow.ellipsis,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // );
                    }, childCount: state.topicsState.topics.length),
                  ),
                ),

              /// ViewQuestions
              if (pageTye == PageType.questions)
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate((
                    BuildContext context,
                    int index,
                  ) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.blueGrey,
                      child: Text('Grid Item $index'),
                    );
                  }, childCount: 20),
                ),

              /// ViewBooks
              if (pageTye == PageType.books)
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate((
                    BuildContext context,
                    int index,
                  ) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.blueGrey,
                      child: Text('Grid Item $index'),
                    );
                  }, childCount: 20),
                ),

              // SingleChildScrollView(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       // Tabs Section
              //       DefaultTabController(
              //         length: 3,
              //         child: Column(
              //           children: [
              //             Container(
              //               decoration: BoxDecoration(
              //                 border: Border(
              //                   bottom: BorderSide(color: Colors.grey.shade800),
              //                 ),
              //               ),
              //               child: TabBar(
              //                 indicatorColor: Colors.white,
              //                 labelColor: Colors.white,
              //                 unselectedLabelColor: Colors.grey,
              //                 tabs: const [
              //                   Tab(icon: Icon(Icons.collections_bookmark_outlined)),
              //                   Tab(icon: Icon(Icons.quiz_outlined)),
              //                   Tab(icon: Icon(Icons.star_border)),
              //                 ],
              //               ),
              //             ),
              //             SizedBox(
              //               height: 400,
              //               child: TabBarView(
              //                 children: [
              //                   // Books Tab
              //                   GridView.builder(
              //                     padding: const EdgeInsets.all(16),
              //                     gridDelegate:
              //                         const SliverGridDelegateWithFixedCrossAxisCount(
              //                           crossAxisCount: 3,
              //                           crossAxisSpacing: 8,
              //                           mainAxisSpacing: 8,
              //                           childAspectRatio: 0.7,
              //                         ),
              //                     itemCount: 9,
              //                     itemBuilder: (context, index) {
              //                       return Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(12),
              //                           image: DecorationImage(
              //                             image: NetworkImage(
              //                               'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=${index + 1}',
              //                             ),
              //                             fit: BoxFit.cover,
              //                           ),
              //                         ),
              //                         child: Container(
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(
              //                               12,
              //                             ),
              //                             gradient: LinearGradient(
              //                               begin: Alignment.bottomCenter,
              //                               end: Alignment.topCenter,
              //                               colors: [
              //                                 Colors.black.withOpacity(0.7),
              //                                 Colors.transparent,
              //                               ],
              //                             ),
              //                           ),
              //                           child: const Align(
              //                             alignment: Alignment.bottomLeft,
              //                             child: Padding(
              //                               padding: EdgeInsets.all(8),
              //                               child: Icon(
              //                                 Icons.bookmark_border,
              //                                 color: Colors.white,
              //                                 size: 20,
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       );
              //                     },
              //                   ),
              //
              //                   // Questions Tab
              //                   ListView.builder(
              //                     padding: const EdgeInsets.all(16),
              //                     itemCount: 5,
              //                     itemBuilder: (context, index) {
              //                       return Container(
              //                         margin: const EdgeInsets.only(bottom: 12),
              //                         padding: const EdgeInsets.all(16),
              //                         decoration: BoxDecoration(
              //                           color: Colors.grey.shade900,
              //                           borderRadius: BorderRadius.circular(16),
              //                         ),
              //                         child: Column(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.start,
              //                           children: [
              //                             Text(
              //                               'Question ${index + 1}',
              //                               style: TextStyle(
              //                                 color: Colors.grey.shade400,
              //                                 fontSize: 12,
              //                               ),
              //                             ),
              //                             const SizedBox(height: 8),
              //                             const Text(
              //                               'Which programming language is known for its use in machine learning?',
              //                               style: TextStyle(
              //                                 color: Colors.white,
              //                                 fontSize: 16,
              //                                 fontWeight: FontWeight.w500,
              //                               ),
              //                             ),
              //                             const SizedBox(height: 12),
              //                             Wrap(
              //                               spacing: 8,
              //                               runSpacing: 8,
              //                               children: ['Python', 'Java', 'C++', 'JavaScript']
              //                                   .map(
              //                                     (answer) => Container(
              //                                       padding:
              //                                           const EdgeInsets.symmetric(
              //                                             horizontal: 12,
              //                                             vertical: 6,
              //                                           ),
              //                                       decoration: BoxDecoration(
              //                                         color: answer == 'Python'
              //                                             ? Colors.green
              //                                                   .withOpacity(
              //                                                     0.2,
              //                                                   )
              //                                             : Colors
              //                                                   .grey
              //                                                   .shade800,
              //                                         borderRadius:
              //                                             BorderRadius.circular(
              //                                               20,
              //                                             ),
              //                                         border: Border.all(
              //                                           color:
              //                                               answer == 'Python'
              //                                               ? Colors.green
              //                                               : Colors
              //                                                     .transparent,
              //                                         ),
              //                                       ),
              //                                       child: Text(
              //                                         answer,
              //                                         style: TextStyle(
              //                                           color:
              //                                               answer == 'Python'
              //                                               ? Colors.green
              //                                               : Colors
              //                                                     .grey
              //                                                     .shade300,
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   )
              //                                   .toList(),
              //                             ),
              //                             const SizedBox(height: 12),
              //                             Row(
              //                               children: [
              //                                 Icon(
              //                                   Icons.thumb_up_outlined,
              //                                   color: Colors.grey.shade400,
              //                                   size: 18,
              //                                 ),
              //                                 const SizedBox(width: 4),
              //                                 Text(
              //                                   '${(index + 1) * 23}',
              //                                   style: TextStyle(
              //                                     color: Colors.grey.shade400,
              //                                   ),
              //                                 ),
              //                                 const SizedBox(width: 16),
              //                                 Icon(
              //                                   Icons.comment_outlined,
              //                                   color: Colors.grey.shade400,
              //                                   size: 18,
              //                                 ),
              //                                 const SizedBox(width: 4),
              //                                 Text(
              //                                   '${index + 3}',
              //                                   style: TextStyle(
              //                                     color: Colors.grey.shade400,
              //                                   ),
              //                                 ),
              //                                 const Spacer(),
              //                                 Icon(
              //                                   Icons.share_outlined,
              //                                   color: Colors.grey.shade400,
              //                                   size: 18,
              //                                 ),
              //                               ],
              //                             ),
              //                           ],
              //                         ),
              //                       );
              //                     },
              //                   ),
              //
              //                   // Favorites Tab
              //                   Center(
              //                     child: Column(
              //                       mainAxisAlignment: MainAxisAlignment.center,
              //                       children: [
              //                         Icon(
              //                           Icons.star_border,
              //                           color: Colors.grey.shade600,
              //                           size: 64,
              //                         ),
              //                         const SizedBox(height: 16),
              //                         Text(
              //                           'No favorites yet',
              //                           style: TextStyle(
              //                             color: Colors.grey.shade400,
              //                             fontSize: 18,
              //                           ),
              //                         ),
              //                         const SizedBox(height: 8),
              //                         Text(
              //                           'Tap the star icon on any book or question to save it here',
              //                           style: TextStyle(
              //                             color: Colors.grey.shade500,
              //                             fontSize: 14,
              //                           ),
              //                           textAlign: TextAlign.center,
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          );
        },
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
