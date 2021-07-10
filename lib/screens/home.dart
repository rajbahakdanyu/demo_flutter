import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Scaffold(
          body: Text('First Page'),
        ),
        Scaffold(
          body: Text('Second Page'),
        ),
        Scaffold(
          body: Text('Third Page'),
        ),
      ],
    );
  }
}
