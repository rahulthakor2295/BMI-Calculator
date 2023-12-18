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
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Expanded(
              child: Container(
                child: Text(
                  "Your BMI",
                  style: kTitleTextStyle,
                ),
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
                    MaterialButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      // ignore: sort_child_properties_last
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          'RE-CALCULATE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      height: kButttomContainerHight,
                      color: kButttomContainerColor,
                      padding: EdgeInsets.only(bottom: 10.0),
                    )
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
