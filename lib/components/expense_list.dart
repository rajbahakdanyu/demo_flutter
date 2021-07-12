import 'package:flutter/material.dart';

import '../components/expense_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
