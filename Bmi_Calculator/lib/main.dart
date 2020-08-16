import 'package:flutter/material.dart';
import 'Screen/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0e21),
        scaffoldBackgroundColor: Color(0xFF0A0e21),
      ),
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      home: HomePage(),
    );
  }
}
