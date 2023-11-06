import 'package:flutter/material.dart';
import 'my_alert.dart';
//import 'image_slider.dart';
import 'main_button.dart';
import 'ventax_logo.dart';
import 'carousel.dart';






class MobileScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = 400.0;
    double buttonHeight = 200.0;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Centra verticalmente
        children: [
          //Agregar el componente adicional centrado arriba
          Container(

            child: VentaXLogo(),
          ),



         // VentaXLogo(),



          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.05,
          // ),





          // Container(
          // //  width: MediaQuery.of(context).size.width,
          //   child: ImageSlider(),
          // ),







         // ImageSlider(),




          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.2,
          // ),


      // SvgImageSlider(
      //   imagesJsonPath: 'assets/images.json',
      //   textJsonPath: 'assets/text.json',
      // ),








          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.09,
          // ),


         // const MainButton(),



          // Container(
          //   child: Column(
          //     children: [
          //       Container(
          //        width: buttonWidth,
          //         height: buttonHeight,
          //         child: MainButton(),
          //       ),
          //     ],
          //   ),
          // ),














        ],

      ),
    );
  }
}
