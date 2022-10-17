// ignore_for_file: prefer_const_constructors

import 'package:bmi/Input_page.dart';
import 'package:flutter/material.dart';
import 'resultsPage.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(title: "BMI CALCULATOR"),
        '/resultpage': (context) => ResultsPage(),
      },
    );
  }
}
