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
      bottomNavigationBar: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: Colors.red,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(50, 10),
                alignment: Alignment.centerLeft,
              ),
              onPressed: () => {},
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
