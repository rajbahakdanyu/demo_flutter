import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import '../components/bottom_nav.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: StyledText(
          text: '<black><blue>Cashy</blue>Bank</black>',
          tags: {
            'black': StyledTextTag(
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            'blue': StyledTextTag(
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          },
        ),
      ),
      body: Center(
        child: Text('Landing Page'),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        child: BottomNav(
          currentIndex: 0,
        ),
      ),
    );
  }
}
