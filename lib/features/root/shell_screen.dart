import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_images.dart';

class ShellScreen extends StatelessWidget {
  final StatefulNavigationShell navShell;
  final List<Widget> children;

  const ShellScreen({
    super.key,
    required this.navShell,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: IndexedStack(index: navShell.currentIndex, children: children),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        selectedIconTheme: IconThemeData(color: colorScheme.secondary),
        selectedLabelStyle: TextStyle(
          color: colorScheme.secondary,
          fontSize: 13,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: "Home",
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            activeIcon: Icon(Icons.search_rounded),
            label: "Search",
            tooltip: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(AppImages.logo),
              ),
            ),
            label: "",
            tooltip: 'TestAbd',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library_outlined),
            activeIcon: Icon(Icons.local_library_rounded),
            label: "Library",
            tooltip: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            activeIcon: Icon(Icons.person_rounded),
            label: "Profile",
            tooltip: 'Profile',
          ),
        ],
        selectedItemColor: colorScheme.secondary,
        currentIndex: navShell.currentIndex,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => navShell.goBranch(index),
      ),
    );
  }
}
