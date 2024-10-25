import 'package:flutter/material.dart';
import 'package:responsive_app/common/widgets/elevated_button_widgets.dart';
import 'package:responsive_app/common/widgets/text_form_field_widgets.dart';
import 'package:responsive_app/common/widgets/text_widgets.dart';
import 'package:responsive_app/core/config/colors/colors_manager.dart';
import 'package:responsive_app/core/config/constants/constants.dart';
import 'package:responsive_app/core/config/fonts/font_manager.dart';
import 'package:responsive_app/core/utils/utils.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Utils().getScreenSize(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.whiteColor,
        body: Center(
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                wSizedBox50,
                Image.asset(
                  'assets/food_club_logo.png',
                  width: size.width * 0.3,
                ),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TextWidgets(
                       text: 'Login',
                       fontSize: size.width * 0.030,
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
                       width: size.width * 0.30,
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
                       width: size.width * 0.30,
                     ),
                     Padding(
                       padding: EdgeInsets.only(
                           right: size.width * 0.13,),
                       child: Align(
                           alignment: Alignment.topRight,
                           child: TextWidgets(
                               text: 'Forgot Password?',
                               color: ColorsManager.cyanColor,
                               fontSize: size.width * 0.010,
                               fontWeight: FontWeight.normal)),
                     ),
                     hSizedBox40,
                     ElevatedButtonWidgets(
                         width: size.width * 0.20,
                         text: 'Login',
                         color: ColorsManager.whiteColor,
                         fontSize: size.width * 0.015,
                         fontWeight: FontWeight.w500),
                     hSizedBox10,
                     TextButton(
                         onPressed: () {},
                         child: Text.rich(TextSpan(
                             text: "Don't have an Account? ",
                             style: TextStyle(
                               color: ColorsManager.greyColor,
                               fontSize: size.width * 0.010,
                             ),
                             children: [
                               TextSpan(
                                   text: 'Sign up',
                                   style: TextStyle(
                                     color: ColorsManager.blackColor,
                                     fontSize: size.width * 0.011,
                                   ))
                             ])))
                   ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
