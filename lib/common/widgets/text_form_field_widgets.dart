import 'package:flutter/material.dart';
import 'package:responsive_app/core/config/colors/colors_manager.dart';


class TextFormFieldWidgets extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String text;
  final double fontSize;
  final double width;

  const TextFormFieldWidgets(
      {super.key,
        this.prefixIcon,
        this.suffixIcon,
        required this.text, required this.fontSize, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: ColorsManager.whiteColor,
            hintText: text,
            hintStyle: TextStyle(color: ColorsManager.black26Color,fontSize: fontSize),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: ColorsManager.blackColor, width: 2),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color:ColorsManager.black26Color, width: 2),
                borderRadius: BorderRadius.circular(12)),
          )),
    );
  }
}
