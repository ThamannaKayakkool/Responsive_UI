import 'package:flutter/material.dart';
import 'package:responsive_app/features/presentation/responsive_design/desktop_screen/desktop_screen.dart';
import 'package:responsive_app/features/presentation/responsive_design/mobile_screen/mobile_screen.dart';
import 'package:responsive_app/features/presentation/responsive_design/tablet_screen/tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>950){
        return const DesktopScreen();
      }else if(constraints.maxWidth>600){
        return const TabletScreen();
      }else{
        return const MobileScreen();
      }
    },);
  }
}
