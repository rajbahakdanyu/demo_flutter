import 'package:flutter/material.dart';

class SlidePage extends StatelessWidget {
  final String title;

  const SlidePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.teahub.io/photos/full/247-2475159_hd-abstract-wallpaper-for-mobile.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}
