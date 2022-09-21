import 'package:flutter/material.dart';

class CardResuable extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, non_constant_identifier_names
  const CardResuable({required this.colur, this.ChardChild});
  final Color colur;
  final Widget? ChardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChardChild,
      decoration: BoxDecoration(
          color: colur, borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(15.0),
    );
  }
}
