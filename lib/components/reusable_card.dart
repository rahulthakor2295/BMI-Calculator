import 'package:flutter/material.dart';

class CardResuable extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, non_constant_identifier_names
  const CardResuable({required this.colur, this.ChardChild, this.onPress});
  final Color colur;
  // ignore: non_constant_identifier_names
  final Widget? ChardChild;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: colur, borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.all(15.0),
        child: ChardChild,
      ),
    );
  }
}
