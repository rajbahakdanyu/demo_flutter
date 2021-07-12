import 'package:flutter/material.dart';

class TransRow extends StatelessWidget {
  const TransRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'Transactions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                primary: Colors.black,
                elevation: 0,
              ),
              onPressed: () => {},
              child: Text('View All'),
            ),
          ),
        ],
      ),
    );
  }
}
