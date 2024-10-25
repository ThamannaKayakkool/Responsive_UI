import 'package:flutter/material.dart';
import 'package:responsive_app/common/widgets/elevated_button_widgets.dart';
import 'package:responsive_app/common/widgets/text_form_field_widgets.dart';
import 'package:responsive_app/common/widgets/text_widgets.dart';
import 'package:responsive_app/core/config/colors/colors_manager.dart';
import 'package:responsive_app/core/config/constants/constants.dart';
import 'package:responsive_app/core/config/fonts/font_manager.dart';
import 'package:responsive_app/core/utils/utils.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

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
              Row(
                children: [
                  Image.asset(
                    'assets/food_club_logo.png',
                    width: size.width * 0.60,
                  ),
                  TextWidgets(
                    text: 'Login',
                    fontSize: size.width * 0.08,
                    color: ColorsManager.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              hSizedBox10,
              TextFormFieldWidgets(
                text: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: ColorsManager.blackColor,
                ),
                fontSize: FontSize.s20,
                width: size.width * 0.65,
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
                width: size.width * 0.65,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: size.width * 0.13, top: size.width * 0.02),
                child: Align(
                    alignment: Alignment.topRight,
                    child: TextWidgets(
                        text: 'Forgot Password?',
                        color: ColorsManager.cyanColor,
                        fontSize: size.width * 0.018,
                        fontWeight: FontWeight.normal)),
              ),
              hSizedBox40,
              ElevatedButtonWidgets(
                  width: size.width * 0.40,
                  text: 'Login',
                  color: ColorsManager.whiteColor,
                  fontSize: size.width * 0.020,
                  fontWeight: FontWeight.w500),
              TextButton(
                  onPressed: () {},
                  child: Text.rich(TextSpan(
                      text: "Don't have an Account? ",
                      style: TextStyle(
                        color: ColorsManager.greyColor,
                        fontSize: size.width * 0.016,
                      ),
                      children: [
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                              color: ColorsManager.blackColor,
                              fontSize: size.width * 0.016,
                            ))
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
