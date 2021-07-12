import 'package:flutter/material.dart';

class DemoCard extends StatelessWidget {
  const DemoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 190,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color(0xff42a5f5),
              Color(0xff90caf9),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Demo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
