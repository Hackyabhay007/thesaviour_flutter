import 'package:flutter/material.dart';
import 'package:the_saviour/screens/homepage.dart';
import 'package:the_saviour/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashPage(),
    );
  }
}
