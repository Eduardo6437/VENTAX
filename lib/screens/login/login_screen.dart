import 'package:flutter/material.dart';
import 'package:venta_x/widgets/responsive_login.dart';
import 'package:venta_x/widgets/trial_constructor.dart';
import 'package:venta_x/widgets/main_button.dart';
import 'package:venta_x/widgets/imgslide.dart';
import 'package:venta_x/widgets/carousel.dart';
import 'package:venta_x/widgets/json_img_reader.dart';
import 'package:venta_x/widgets/ventax_logo.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        //  child: ResponsiveLogin(),
       // child: JsonFileReaderWidget(),
        //child: MainButton(),
        //child: SvgImageSlider2(),

        child:  VentaXLogo(),



        //child:  SvgImageSlider(
        //  imagesJsonPath: 'assets/images.json',
        //textJsonPath: 'assets/text.json',
        // ),








      ),
    );
  }
}























// import 'package:flutter/material.dart';
// import 'package:venta_x/widgets/responsive_login.dart';
// import 'package:venta_x/widgets/trial_constructor.dart';
// import 'package:venta_x/widgets/main_button.dart';
//
// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         //child: ResponsiveLogin(),
//         //child: JsonFileReaderWidget(),
//         child: Column(
//         //  mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             //MainButton(),  // Primera instancia de MainButton
//             MainButton(),  // Segunda instancia de MainButton
//           ],
//         ),
//
//
//
//
//       ),
//     );
//   }
// }