import 'package:flutter/material.dart';
import 'package:twitch_clone/screens/following/following.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitch Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: Following(),
    );
  }
}
