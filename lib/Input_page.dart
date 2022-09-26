// ignore_for_file: prefer_const_constructors, file_names
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_container.dart';
import 'reusable_card.dart';

const ActivatecardColor = Color(0xFF0C1234);
const ButttomContainerHight = 80.0;
const ButttomContainerColor = Color(0xFFFF0067);
const InactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color MaleCardColor = InactiveColor;
  Color FemaleCardColor = InactiveColor;
  void updateColor(int Gender) {
    if (Gender == 1) {
      if (MaleCardColor == InactiveColor) {
        MaleCardColor = ActivatecardColor;

        FemaleCardColor = InactiveColor;
      } else {
        MaleCardColor = InactiveColor;
      }
    } else if (Gender == 2) {
      if (FemaleCardColor == InactiveColor) {
        FemaleCardColor = ActivatecardColor;
        MaleCardColor = InactiveColor;
      } else {
        FemaleCardColor = InactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: CardResuable(
                        colur: MaleCardColor,
                        ChardChild: ContainerColumn(
                          ColumnText: "Male",
                          ColumnIcon: Icons.male,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: CardResuable(
                        colur: FemaleCardColor,
                        ChardChild: ContainerColumn(
                          ColumnText: "Female",
                          ColumnIcon: Icons.female,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardResuable(
                colur: ActivatecardColor,
              ),
            ),
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: CardResuable(
                      colur: ActivatecardColor,
                    ),
                  ),
                  Expanded(
                    child: CardResuable(
                      colur: ActivatecardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: ButttomContainerHight,
              width: double.infinity,
              color: ButttomContainerColor,
              child: TextButton(
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
