import 'package:flutter/material.dart';
import 'package:jdwebapp/screens/desktop_screen.dart';
import 'package:jdwebapp/screens/mobile_screen.dart';
import 'package:jdwebapp/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juned Siddiqui Fesume',
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > iPadProWidth) {
            return DesktopScreen();
          } else if ((constraints.maxWidth < iPadProWidth) &&
              (constraints.maxWidth > iPadWidth)) {
            return DesktopScreen();
          } else if ((constraints.maxWidth < iPadWidth) &&
              (constraints.maxWidth > iPhone7Width)) {
            return MobileScreen();
          } else if ((constraints.maxWidth < iPhone7Width) &&
              (constraints.maxWidth < iPhone5SeWidth)) {
            return MobileScreen();
          } else {
            return MobileScreen();
          }
        },
      ),
    );
  }
}
