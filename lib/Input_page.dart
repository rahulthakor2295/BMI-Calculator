import 'package:flutter/material.dart';

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
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CardResuable(
                      colur: Color(0xFF0C1234),
                    ),
                  ),
                  Expanded(
                    child: CardResuable(
                      colur: Color(0xFF0C1234),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardResuable(
                colur: Color(0xFF0C1234),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: CardResuable(
                    colur: Colors.blue,
                  ),
                ),
                Expanded(
                  child: CardResuable(
                    colur: Color(0xFF0C1234),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class CardResuable extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CardResuable({required this.colur});
  final Color colur;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colur, borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(15.0),
    );
  }
}
