import 'package:flutter/material.dart';
import 'package:responsive_app/core/config/colors/colors_manager.dart';

class ElevatedButtonWidgets extends StatelessWidget {
  final double? width;
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;

  const ElevatedButtonWidgets(
      {super.key,
      this.width,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(ColorsManager.blackColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)))),
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(
                  color: color, fontSize: fontSize, fontWeight: fontWeight),
            )));
  }
}
