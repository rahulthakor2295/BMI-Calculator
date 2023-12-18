// ignore_for_file: prefer_const_constructors, file_names
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/components/constants.dart';
import 'package:bmi/components/icon_container.dart';
import 'resultsPage.dart';
import 'package:bmi/components/buttom_button.dart';
import 'package:bmi/components/RoundIcon_Button.dart';
import 'package:bmi/calculator_brain.dart';

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
  int Hieght = 180;
  int Weight = 60;
  gender? SelectedGender;
  int Age = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(widget.title,style: TextStyle(color: Colors.grey),),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ? kActivatecardColor
                          : kInactiveColor,
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
                          ? kActivatecardColor
                          : kInactiveColor,
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
                ChardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HIEGHT",
                      style: kLableTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${Hieght.toInt()}", style: kNumberTextStyle),
                        Text("cm", style: kLableTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                      child: Slider(
                        value: Hieght.toDouble(),
                        max: 220,
                        inactiveColor: Color(0xFFD63D64),
                        // label: Hieght.round().toString(),
                        min: 120.0,

                        onChanged: (value) {
                          setState(() {
                            Hieght = value.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                colur: kActivatecardColor,
                onPress: null,
              ),
            ),
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: CardResuable(
                      colur: kActivatecardColor,
                      onPress: null,
                      ChardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLableTextStyle,
                          ),
                          Text(
                            Weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    Weight--;
                                  });
                                },
                                RoundIconButtonIcon: Icon(
                                  Icons.minimize,
                                  color: kRoundIconButtonIconColor,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    Weight++;
                                  });
                                },
                                RoundIconButtonIcon: Icon(
                                  Icons.add,
                                  color: kRoundIconButtonIconColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardResuable(
                      colur: kActivatecardColor,
                      ChardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: kLableTextStyle,
                            ),
                            Text(
                              Age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  RoundIconButtonIcon: Icon(
                                    Icons.minimize,
                                    color: kRoundIconButtonIconColor,
                                  ),
                                  onPress: () {
                                    setState(() {
                                      Age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  RoundIconButtonIcon: Icon(
                                    Icons.add,
                                    color: kRoundIconButtonIconColor,
                                  ),
                                  onPress: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            ButtomButton(
              ButtonTitle: 'CALCULATE YOUR BMI',
              onTap: () {
                CalculatorBrain cal =
                    new CalculatorBrain(height: Hieght, weight: Weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                            bmiResult: cal.calculatorBMI(),
                            resultText: cal.getResult(),
                            interpretation: cal.getinterpetation())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
