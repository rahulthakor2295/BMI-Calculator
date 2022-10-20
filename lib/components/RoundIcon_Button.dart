import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  RoundIconButton(
      {super.key, @required this.RoundIconButtonIcon, this.onPress});
  Icon? RoundIconButtonIcon;
  dynamic Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: RoundIconButtonIcon,
    );
  }
}
