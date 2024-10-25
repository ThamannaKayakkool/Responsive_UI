import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;

  const TextWidgets(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
    );
  }
}
