import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

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
      currentIndex: 0,
      onTap: (int i) {
        print(i);
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
