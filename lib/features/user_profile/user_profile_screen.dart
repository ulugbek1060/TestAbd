import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Profile Header Section
                Padding(
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

                      // Statistics Row
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

                            // books
                            Column(
                              children: [
                                const Text(
                                  '89',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Books',
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

                // Bio Section
                Padding(
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

                // Action Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_add_outlined,
                            color: Colors.white,
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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Quiz Statistics Cards
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Quiz Performance 📊',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Statistics Grid
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1.5,
                        children: [
                          _buildStatCard(
                            title: 'Total Tests',
                            value: '342',
                            icon: Icons.assessment_outlined,
                            color: Colors.blue,
                            progress: 1.0,
                          ),
                          _buildStatCard(
                            title: 'Accuracy',
                            value: '87%',
                            icon: Icons.dangerous_outlined,
                            color: Colors.green,
                            progress: 0.87,
                          ),
                          _buildStatCard(
                            title: 'Correct Answers',
                            value: '92%',
                            icon: Icons.check_circle_outline,
                            color: Colors.green,
                            progress: 0.92,
                          ),
                          _buildStatCard(
                            title: 'Wrong Answers',
                            value: '8%',
                            icon: Icons.cancel_outlined,
                            color: Colors.red,
                            progress: 0.08,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Tabs Section
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey.shade800),
                          ),
                        ),
                        child: TabBar(
                          indicatorColor: Colors.white,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          tabs: const [
                            Tab(
                              icon: Icon(Icons.collections_bookmark_outlined),
                            ),
                            Tab(icon: Icon(Icons.quiz_outlined)),
                            Tab(icon: Icon(Icons.star_border)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 400,
                        child: TabBarView(
                          children: [
                            // Books Tab
                            GridView.builder(
                              padding: const EdgeInsets.all(16),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8,
                                    childAspectRatio: 0.7,
                                  ),
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=${index + 1}',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent,
                                        ],
                                      ),
                                    ),
                                    child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),

                            // Questions Tab
                            ListView.builder(
                              padding: const EdgeInsets.all(16),
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Question ${index + 1}',
                                        style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Which programming language is known for its use in machine learning?',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Wrap(
                                        spacing: 8,
                                        runSpacing: 8,
                                        children:
                                            [
                                                  'Python',
                                                  'Java',
                                                  'C++',
                                                  'JavaScript',
                                                ]
                                                .map(
                                                  (answer) => Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 12,
                                                          vertical: 6,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: answer == 'Python'
                                                          ? Colors.green
                                                                .withOpacity(
                                                                  0.2,
                                                                )
                                                          : Colors
                                                                .grey
                                                                .shade800,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                      border: Border.all(
                                                        color:
                                                            answer == 'Python'
                                                            ? Colors.green
                                                            : Colors
                                                                  .transparent,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      answer,
                                                      style: TextStyle(
                                                        color:
                                                            answer == 'Python'
                                                            ? Colors.green
                                                            : Colors
                                                                  .grey
                                                                  .shade300,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.thumb_up_outlined,
                                            color: Colors.grey.shade400,
                                            size: 18,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${(index + 1) * 23}',
                                            style: TextStyle(
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Icon(
                                            Icons.comment_outlined,
                                            color: Colors.grey.shade400,
                                            size: 18,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${index + 3}',
                                            style: TextStyle(
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                          const Spacer(),
                                          Icon(
                                            Icons.share_outlined,
                                            color: Colors.grey.shade400,
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),

                            // Favorites Tab
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.grey.shade600,
                                    size: 64,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    'No favorites yet',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Tap the star icon on any book or question to save it here',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
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
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    required double progress,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
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
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
          const SizedBox(height: 8),
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

// class _View extends StatelessWidget {
//   const _View();
//
//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.read<UserProfileCubit>();
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: [
//             // space
//             const SliverToBoxAdapter(child: SizedBox(height: 16)),
//
//             // sliver app bar
//             BlocBuilder<UserProfileCubit, UserProfileState>(
//               builder: (context, state) {
//                 return SliverAppBar(
//                   title: Text(
//                     state.profile?.user?.username ?? '',
//                     style: Theme.of(context).textTheme.titleLarge,
//                   ),
//                 );
//               },
//             ),
//
//             // space
//             const SliverToBoxAdapter(child: SizedBox(height: 4)),
//
//             // user info
//             BlocBuilder<UserProfileCubit, UserProfileState>(
//               builder: (context, state) {
//                 return SliverToBoxAdapter(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       /// image and followers
//                       Row(
//                         children: [
//                           // space
//                           const SizedBox(width: 16),
//
//                           // image
//                           SizedBox(
//                             width: 100,
//                             height: 100,
//                             child: Container(
//                               padding: const EdgeInsets.all(3),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.white,
//                               ),
//                               child: ClipOval(
//                                 child: CachedNetworkImage(
//                                   imageUrl:
//                                       state.profile?.user?.profileImage ?? '',
//                                   fit: BoxFit.cover,
//                                   placeholder: (_, __) => Center(
//                                     child: CircularProgressIndicator(),
//                                   ),
//                                   errorWidget: (_, __, ___) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                           ),
//
//                           // followers and following
//                           Expanded(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 // followers
//                                 Column(
//                                   children: [
//                                     Text(
//                                       state.profile?.user?.getFollowersCount ??
//                                           '',
//                                       style: Theme.of(
//                                         context,
//                                       ).textTheme.titleMedium,
//                                     ),
//                                     Text('Followers'),
//                                   ],
//                                 ),
//
//                                 // following
//                                 Column(
//                                   children: [
//                                     Text(
//                                       state.profile?.user?.getFollowersCount ??
//                                           '',
//                                       style: Theme.of(
//                                         context,
//                                       ).textTheme.titleMedium,
//                                     ),
//                                     Text('Following'),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//
//                       // firstname lastname
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 8.0,
//                           left: 16.0,
//                           right: 16.0,
//                         ),
//                         child: Text(
//                           '${state.profile?.user?.firstName} ${state.profile?.user?.lastName}',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//
//                       // username
//                       Padding(
//                         padding: const EdgeInsets.only(left: 16.0, right: 16.0),
//                         child: Text(
//                           '@${state.profile?.user?.username}',
//                           style: Theme.of(context).textTheme.bodySmall,
//                         ),
//                       ),
//
//                       // joined date
//                       Padding(
//                         padding: const EdgeInsets.only(right: 16.0, left: 16.0),
//                         child: Row(
//                           children: [
//                             Icon(Icons.calendar_today_rounded, size: 12),
//                             const SizedBox(width: 4),
//                             Text(
//                               'Joinde ${formatDate(state.profile?.user?.joinDate)}',
//                               style: Theme.of(context).textTheme.bodySmall,
//                             ),
//                           ],
//                         ),
//                       ),
//
//                       // level
//                       Padding(
//                         padding: const EdgeInsets.only(right: 16.0, left: 16.0),
//                         child: Row(
//                           children: [
//                             Icon(Icons.star, size: 12),
//                             const SizedBox(width: 4),
//                             Text(
//                               state.profile?.user?.level ?? '',
//                               style: Theme.of(context).textTheme.bodySmall,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//
//             // statistics sections
//             BlocBuilder<UserProfileCubit, UserProfileState>(
//               builder: (context, state) {
//                 return SliverToBoxAdapter(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // space
//                         const SizedBox(height: 16),
//
//                         Row(
//                           children: [
//                             Icon(Icons.stacked_bar_chart),
//                             const SizedBox(width: 8),
//                             Text(
//                               'Statistics',
//                               style: Theme.of(context).textTheme.titleMedium,
//                             ),
//                           ],
//                         ),
//
//                         ListTile(title: Text('Total Tests')),
//                         ListTile(title: Text('Correct Answers')),
//                         ListTile(title: Text('Wrong Answers')),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
