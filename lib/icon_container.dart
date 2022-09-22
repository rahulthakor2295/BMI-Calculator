import 'package:flutter/material.dart';

const ColumnTextStyle = TextStyle(fontSize: 20.0, color: Color(0xFF767686));

class ContainerColumn extends StatelessWidget {
  const ContainerColumn({this.ColumnText, this.ColumnIcon});
  final String? ColumnText;
  final IconData? ColumnIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          ColumnIcon,
          size: 130,
          color: Color(0xFFFFFFFF),
        ),
        Text(
          ColumnText!,
          style: ColumnTextStyle,
        )
      ],
    );
  }
}
