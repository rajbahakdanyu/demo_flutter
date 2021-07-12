import 'package:flutter/material.dart';

class SlidePage extends StatelessWidget {
  final String title;

  const SlidePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://wallpaperaccess.com/full/3119143.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Welcome To',
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
