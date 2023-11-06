import 'package:flutter/material.dart';
import 'large_screen_layout.dart';
import 'mobile_screen_layout.dart';
import 'my_button.dart';
import 'main_button.dart';

class ResponsiveLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    if (MediaQuery.of(context).size.width > 950) {
      // Pantallas más grandes (mayores de 900px)
      // return LargeScreenLayout();
     // return MainButton();
      return MobileScreenLayout();
    } else {
      // Pantallas móviles
        return MobileScreenLayout();
      //return MainButton();
      //  return MyButton();
    }
  }
}
