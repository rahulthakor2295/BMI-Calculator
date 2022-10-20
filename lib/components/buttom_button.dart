import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi/screens/Input_page.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({this.ButtonTitle, this.onTap});
  final Function()? onTap;
  final String? ButtonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // ignore: sort_child_properties_last
        child: Center(
          child: Text(
            ButtonTitle!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        height: kButttomContainerHight,
        width: double.infinity,
        color: kButttomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
