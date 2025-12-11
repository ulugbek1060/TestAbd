import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
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
            icon: Icon(Icons.person_outline_rounded),
            activeIcon: Icon(Icons.person_rounded),
            label: "Profile",
            tooltip: 'Profile',
          ),
        ],
        selectedItemColor: colorScheme.secondary,
        currentIndex: navShell.currentIndex,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => navShell.goBranch(index),
      ),
    );
  }

  //       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_circle_outline),
//             label: 'Create',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications_outlined),
//             label: 'Activity',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         currentIndex: 4,
//       ),
}
