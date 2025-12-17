import 'package:flutter/material.dart';

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

/* -------------------- DATA MODEL -------------------- */
class UserItem {
  final String name;
  final String username;
  final String imageUrl;
  bool isFollowing;

  UserItem({
    required this.name,
    required this.username,
    required this.imageUrl,
    this.isFollowing = false,
  });
}

final mockUsers = List.generate(
  12,
  (i) => UserItem(
    name: 'User Name $i',
    username: '@username$i',
    imageUrl: 'https://i.pravatar.cc/150?img=${i + 5}',
    isFollowing: i % 2 == 0,
  ),
);

/* -------------------- MAIN TABS -------------------- */
class ProfileConnectionsScreen extends StatefulWidget {
  final int userId;
  final ProfileConnectionEnum connectionType;

  const ProfileConnectionsScreen({
    super.key,
    required this.userId,
    required this.connectionType,
  });

  @override
  State<ProfileConnectionsScreen> createState() =>
      _ProfileConnectionsScreenState();

}

class _ProfileConnectionsScreenState extends State<ProfileConnectionsScreen> {
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
        body: TabBarView(
          children: [
            FollowersPage(users: mockUsers),
            FollowingPage(users: mockUsers),
          ],
        ),
      ),
    );
  }
}

/* -------------------- FOLLOWERS -------------------- */
class FollowersPage extends StatelessWidget {
  final List<UserItem> users;

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
  final List<UserItem> users;

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
  final UserItem user;

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
        backgroundImage: NetworkImage(widget.user.imageUrl),
      ),
      title: Text(
        widget.user.name,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(widget.user.username),
      trailing: SizedBox(
        height: 32,
        child: OutlinedButton(
          onPressed: () {
            setState(() {
              widget.user.isFollowing = !widget.user.isFollowing;
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
