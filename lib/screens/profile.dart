import 'package:demo/components/top_nav.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopNav(
        navColor: Colors.white,
        navWidget: IconButton(
          onPressed: null,
          icon: Icon(Icons.settings_outlined),
        ),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        child: BottomNav(
          currentIndex: 3,
        ),
      ),
    );
  }
}
