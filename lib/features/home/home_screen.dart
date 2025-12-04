import 'package:flutter/material.dart';
import 'package:testabd/core/utils/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          /// Appbar
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('TestAbd'),
            centerTitle: false,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: AssetImage(AppImages.logo)),
            ),
            actions: [
              Text('Meroschi'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_rounded),
              ),
            ],
          ),

          /// Stories Section
          SliverToBoxAdapter(
            child: StoriesSection(),
          ),

          /// Posts Section

        ],
      ),
    );
  }
}

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      height: 80,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages.logo),
            ),
          ),
        ],
      ),
    );
  }
}

