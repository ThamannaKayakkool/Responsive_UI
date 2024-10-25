import 'package:flutter/material.dart';
import 'package:responsive_app/common/widgets/elevated_button_widgets.dart';
import 'package:responsive_app/common/widgets/text_form_field_widgets.dart';
import 'package:responsive_app/common/widgets/text_widgets.dart';
import 'package:responsive_app/core/config/colors/colors_manager.dart';
import 'package:responsive_app/core/config/constants/constants.dart';
import 'package:responsive_app/core/config/fonts/font_manager.dart';
import 'package:responsive_app/core/utils/utils.dart';


class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Utils().getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              hSizedBox80,
              Image.asset(
                'assets/food_club_logo.png',
                width: size.width * 0.50,
              ),
              TextWidgets(
                text: 'Login',
                fontSize: size.width * 0.10,
                color: ColorsManager.blackColor,
                fontWeight: FontWeight.bold,
              ),
              hSizedBox20,
              TextFormFieldWidgets(
                text: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: ColorsManager.blackColor,
                ),
                fontSize: FontSize.s20,
                width: size.width * 0.85,
              ),
              hSizedBox10,
              TextFormFieldWidgets(
                text: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: ColorsManager.blackColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: ColorsManager.blackColor,
                ),
                fontSize: FontSize.s20,
                width:size.width * 0.85,
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.03,top: size.width * 0.01),
                child: Align(
                    alignment: Alignment.topRight,
                    child: TextWidgets(
                        text: 'Forgot Password?',
                        color: ColorsManager.cyanColor,
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.normal)),
              ),
              hSizedBox20,
              ElevatedButtonWidgets(
                  width: size.width * 0.60,
                  text: 'Login',
                  color: ColorsManager.whiteColor,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w500),
              TextButton(
                  onPressed: () {},
                  child: Text.rich(TextSpan(
                      text: "Don't have an Account? ",
                      style: TextStyle(color: ColorsManager.greyColor),
                      children: [
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(color: ColorsManager.blackColor))
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
