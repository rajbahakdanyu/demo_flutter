import 'package:flutter/material.dart';

import '../components/slide_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        SlidePage(title: "First Page"),
        SlidePage(title: "Second Page"),
        SlidePage(title: "Third Page"),
      ],
    );
  }
}
