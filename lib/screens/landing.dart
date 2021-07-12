import 'package:avatars/avatars.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Avatar(
                          name: 'Bill Gate',
                          shape: AvatarShape.rectangle(
                            50,
                            50,
                            BorderRadius.all(new Radius.circular(5.0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: StyledText(
                            text:
                                '<black>Bill Gates</black> \n<grey>12 July, 2021</grey>',
                            tags: {
                              'black': StyledTextTag(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              'grey': StyledTextTag(
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            },
                          ),
                        ),
                        SizedBox(width: 100),
                        Text(
                          '\$145.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
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
