import 'package:avatars/avatars.dart';
import 'package:flutter/material.dart';

import '../components/top_nav.dart';
import '../components/bottom_nav.dart';
import '../components/expense_item.dart';

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
          Padding(
            padding: EdgeInsets.only(left: 30.0, top: 20.0),
            child: Container(
              height: 190.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ExpenseItem(
                    iconColor: Colors.blue,
                    itemIcon: Icons.shopping_cart_outlined,
                    itemColor: Colors.white,
                    expense: '\$168.50',
                    expenseColor: Colors.black,
                    expenseTitle: 'Grocery',
                    progress: 0.6,
                  ),
                  ExpenseItem(
                    iconColor: Colors.white,
                    itemIcon: Icons.local_hospital_outlined,
                    itemColor: Colors.blue.shade400,
                    expense: '\$95.35',
                    expenseColor: Colors.white,
                    expenseTitle: 'Medicine',
                    progress: 0.4,
                  ),
                  ExpenseItem(
                    iconColor: Colors.blue,
                    itemIcon: Icons.coffee_outlined,
                    itemColor: Colors.white,
                    expense: '\$57.99',
                    expenseColor: Colors.black,
                    expenseTitle: 'Cafe',
                    progress: 0.2,
                  ),
                ],
              ),
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
