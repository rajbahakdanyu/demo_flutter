import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/slide_page.dart';

class HomePage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: PageView(
        controller: controller,
        children: [
          SlidePage(
            title: 'First Page',
            controller: controller,
          ),
          SlidePage(
            title: 'Second Page',
            controller: controller,
          ),
          SlidePage(
            title: 'Third Page',
            controller: controller,
          ),
        ],
      ),
    );
  }
}
