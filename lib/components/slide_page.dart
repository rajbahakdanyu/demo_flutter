import 'package:flutter/material.dart';

class SlidePage extends StatelessWidget {
  final String title;

  const SlidePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
