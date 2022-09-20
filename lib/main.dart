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
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          buttonColor: Colors.red),
      home: const InputPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            child: Theme(
              data: ThemeData(splashColor: Colors.red),
              child: ElevatedButton(
                  onPressed: () {}, child: Text("CALCULATE YOUR BMI")),
            ),
          ),
        ],
      ),
    ));
  }
}
