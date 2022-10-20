import 'package:flutter/material.dart';
import '../components/buttom_button.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'Input_page.dart';
import 'package:bmi/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your BMI",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: CardResuable(
                colur: kInactiveColor,
                ChardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      resultText,
                      style: kresultTextstyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    ButtomButton(
                        ButtonTitle: 'RE-CALCULATE',
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
