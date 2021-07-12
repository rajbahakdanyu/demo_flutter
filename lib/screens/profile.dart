import 'package:avatars/avatars.dart';
import 'package:demo/components/expense_list.dart';
import 'package:flutter/material.dart';

import '../components/top_nav.dart';
import '../components/bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopNav(
        navColor: Colors.white,
        navWidget: IconButton(
          onPressed: null,
          icon: Icon(Icons.settings_outlined),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(
            name: 'John Doe',
            shape: AvatarShape.circle(35),
          ),
          Text(
            'John Doe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            'Total Spending',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          Text(
            '\$3,633',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          ExpenseList(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Income',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () => {},
                      icon: Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        child: BottomNav(
          currentIndex: 3,
        ),
      ),
    );
  }
}
