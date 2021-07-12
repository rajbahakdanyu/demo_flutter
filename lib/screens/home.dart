import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/slide_page.dart';

class HomePage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: controller,
        children: [
          SlidePage(title: 'First Page'),
          SlidePage(title: 'Second Page'),
          SlidePage(title: 'Third Page'),
        ],
      ),
      bottomNavigationBar: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: WormEffect(
          activeDotColor: Colors.white,
        ),
      ),
    );
  }
}
