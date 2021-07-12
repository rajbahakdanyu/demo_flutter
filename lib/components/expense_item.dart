import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final IconData itemIcon;
  final Color itemColor;
  final Color iconColor;
  final String expense;
  final String expenseTitle;
  final Color expenseColor;

  const ExpenseItem({
    required this.iconColor,
    required this.itemIcon,
    required this.itemColor,
    required this.expense,
    required this.expenseTitle,
    required this.expenseColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 15.0,
        bottom: 15.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: itemColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        width: 130.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                itemIcon,
                color: iconColor,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                expense,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                color: iconColor,
                value: 0.6,
                semanticsLabel: 'Linear progress indicator',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                expenseTitle,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
