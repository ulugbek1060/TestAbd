import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/features/user_profile/profile_connection_cubit.dart';
import 'package:testabd/features/user_profile/profile_connection_state.dart';

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

/* -------------------- MAIN TABS -------------------- */
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
                FollowersPage(users: state.connections.followers),
                FollowingPage(users: state.connections.following),
              ],
            );
          },
        ),
      ),
    );
  }
}

/* -------------------- FOLLOWERS -------------------- */
class FollowersPage extends StatelessWidget {
  final List<UserConnectionModel> users;

  const FollowersPage({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        return UserTile(user: users[index]);
      },
    );
  }
}

/* -------------------- FOLLOWING -------------------- */
class FollowingPage extends StatelessWidget {
  final List<UserConnectionModel> users;

  const FollowingPage({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.where((u) => u.isFollowing).length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final followingUsers = users.where((u) => u.isFollowing).toList();
        return UserTile(user: followingUsers[index]);
      },
    );
  }
}

/* -------------------- USER ITEM -------------------- */
class UserTile extends StatefulWidget {
  final UserConnectionModel user;

  const UserTile({super.key, required this.user});

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(widget.user.profileImage ?? ''),
      ),
      title: Text(
        widget.user.username,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(widget.user.username),
      trailing: SizedBox(
        height: 32,
        child: OutlinedButton(
          onPressed: () {
            setState(() {
              // widget.user.isFollowing = !widget.user.isFollowing;
            });
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: widget.user.isFollowing
                ? Colors.grey.shade200
                : Colors.blue,
            side: BorderSide(
              color: widget.user.isFollowing ? Colors.grey : Colors.transparent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            widget.user.isFollowing ? 'Following' : 'Follow',
            style: TextStyle(
              color: widget.user.isFollowing ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
