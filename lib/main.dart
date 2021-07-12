import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/landing.dart';
import './screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'landing': (context) => LandingPage(),
        'profile': (context) => ProfilePage(),
      },
    );
  }
}
