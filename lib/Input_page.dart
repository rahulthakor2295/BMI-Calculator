// ignore_for_file: prefer_const_constructors, file_names
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_container.dart';
import 'reusable_card.dart';

const ActivatecardColor = Color(0xFF0C1234);
const ButttomContainerHight = 80.0;
const ButttomContainerColor = Color(0xFFFF0067);
const InactiveColor = Color(0xFF111328);

enum gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // ignore: non_constant_identifier_names

  // Color MaleCardColor = InactiveColor;
  // Color FemaleCardColor = InactiveColor;
  // ignore: non_constant_identifier_names

  // void updateColor(gender SelectedGender) {
  //   SelectedGender == gender.male && MaleCardColor == InactiveColor
  //       ? MaleCardColor = ActivatecardColor
  //       : MaleCardColor = InactiveColor;
  //   // FemaleCardColor = InactiveColor

  //   SelectedGender == gender.female && FemaleCardColor == InactiveColor
  //       ? FemaleCardColor = ActivatecardColor
  //       : FemaleCardColor = InactiveColor;
  // }
  gender? SelectedGender;
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
                    child: CardResuable(
                      onPress: () {
                        setState(() {
                          SelectedGender = gender.male;
                        });
                      },
                      colur: SelectedGender == gender.male
                          ? ActivatecardColor
                          : InactiveColor,
                      ChardChild: ContainerColumn(
                        ColumnText: "Male",
                        ColumnIcon: Icons.male,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardResuable(
                      onPress: () {
                        setState(() {
                          SelectedGender = gender.female;
                        });
                      },
                      colur: SelectedGender == gender.female
                          ? ActivatecardColor
                          : InactiveColor,
                      ChardChild: ContainerColumn(
                        ColumnText: "Female",
                        ColumnIcon: Icons.female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardResuable(
                colur: ActivatecardColor,
                onPress: null,
              ),
            ),
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: CardResuable(
                      colur: ActivatecardColor,
                      onPress: null,
                    ),
                  ),
                  Expanded(
                    child: CardResuable(
                      colur: ActivatecardColor,
                      onPress: null,
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
