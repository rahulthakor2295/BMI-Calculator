// ignore_for_file: prefer_const_constructors

import 'package:bmi/screens/Input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          // iconTheme: IconThemeData(color: Colors.white),
          // primaryIconTheme: IconThemeData(color: Colors.white),
          // accentIconTheme: IconThemeData(color: Colors.white),
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          // ignore: deprecated_member_use
          buttonColor: Colors.red),
      home: const InputPage(title: 'Flutter Demo Home Page'),
    );
  }
}
