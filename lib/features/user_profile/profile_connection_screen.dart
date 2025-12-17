import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/features/user_profile/profile_connection_cubit.dart';
import 'package:testabd/features/user_profile/profile_connection_state.dart';
import 'package:testabd/router/app_router.dart';

enum ProfileConnectionEnum {
  following,
  followers;

  static ProfileConnectionEnum fromString(String value) {
    switch (value) {
      case 'following':
        return following;
      case 'followers':
        return followers;
      default:
        return following;
    }
  }
}

class ProfileConnectionScreen extends StatelessWidget {
  final int userId;
  final ProfileConnectionEnum connectionType;

  const ProfileConnectionScreen({
    super.key,
    required this.userId,
    required this.connectionType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<ProfileConnectionCubit>(param1: userId)
            ..loadUserConnections(),
      child: _View(userId: userId, connectionType: connectionType),
    );
  }
}

class _View extends StatefulWidget {
  final int userId;
  final ProfileConnectionEnum connectionType;

  const _View({required this.userId, required this.connectionType});

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  late PageStorageKey _followersPageKey;
  late PageStorageKey _followingPageKey;

  @override
  void initState() {
    _followersPageKey = PageStorageKey('followersPageKey');
    _followingPageKey = PageStorageKey('followingPageKey');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: widget.connectionType == ProfileConnectionEnum.following
          ? 1
          : 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Connections'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Followers'),
              Tab(text: 'Following'),
            ],
          ),
        ),
        body: BlocBuilder<ProfileConnectionCubit, ProfileConnectionState>(
          builder: (context, state) {
            return TabBarView(
              children: [
                _ConnectionsList(
                  key: _followersPageKey,
                  users: state.connections.followers,
                ),
                _ConnectionsList(
                  key: _followingPageKey,
                  users: state.connections.following,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ConnectionsList extends StatelessWidget {
  final List<UserConnectionModel> users;

  const _ConnectionsList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final user = users[index];
        return UserTile(
          user: user,
          onTap: () =>
              context.push(AppRouter.userProfileWithUsername(user.username)),
        );
      },
    );
  }
}

class UserTile extends StatelessWidget {
  final UserConnectionModel user;
  final VoidCallback onTap;

  const UserTile({super.key, required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(user.profileImage ?? ''),
      ),
      title: Text(
        user.username,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(user.username),
      trailing: SizedBox(
        height: 32,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: user.isFollowing
                ? Colors.grey.shade200
                : Colors.blue,
            side: BorderSide(
              color: user.isFollowing ? Colors.grey : Colors.transparent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            user.isFollowing ? 'Following' : 'Follow',
            style: TextStyle(
              color: user.isFollowing ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
