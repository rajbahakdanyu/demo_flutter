import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlidePage extends StatelessWidget {
  final String title;
  final PageController controller;

  const SlidePage({Key? key, required this.title, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://wallpaperaccess.com/full/3119143.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: WormEffect(),
        ),
      ),
    );
  }
}
