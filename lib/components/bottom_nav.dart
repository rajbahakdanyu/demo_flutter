import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;

  const BottomNav({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[200],
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      currentIndex: currentIndex,
      onTap: (int i) {
        if (i == 0) {
          print('Go to landing page');
        }

        if (i == 3) {
          print('Go to profile page');
        }
      },
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: 'Pie Chart',
          icon: Icon(Icons.pie_chart_outline),
          activeIcon: Icon(Icons.pie_chart),
        ),
        BottomNavigationBarItem(
          label: 'Line Chart',
          icon: Icon(Icons.bar_chart_outlined),
          activeIcon: Icon(Icons.bar_chart),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
        ),
      ],
    );
  }
}
