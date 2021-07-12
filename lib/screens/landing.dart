import 'package:demo/components/trans_item.dart';
import 'package:flutter/material.dart';

import '../components/top_nav.dart';
import '../components/bottom_nav.dart';
import '../components/demo_card.dart';
import '../components/refer_card.dart';
import '../components/trans_row.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: TopNav(
        navColor: Colors.grey[200],
        navWidget: IconButton(
          onPressed: null,
          icon: Icon(Icons.notifications_none),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DemoCard(),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReferCard(),
                TransRow(),
                TransItem(
                  name: 'Bill Gate',
                  date: '12 July, 2021',
                  amount: '+\$145.00',
                ),
                TransItem(
                  name: 'Elon Musk',
                  date: '4 July, 2021',
                  amount: '-\$434.00',
                ),
              ],
            ),
          ),
        ],
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
