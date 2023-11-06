import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VentaXLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return Center(

      // Center(
      // padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.2),

      // padding: const EdgeInsets.only(bottom: 50.0), // Agrega el padding hacia abajo
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centra el Row horizontalmente
        children: [
          Padding(
            //Center(
            padding: const EdgeInsets.only(left: 15.0, right: 7.0), // Ajusta el espaciado
            child: SvgPicture.asset(
              'assets/login_img/ventax_logo.svg', // Reemplaza 'your_image.svg' con la ruta de tu imagen SVG
              height: 30, // Ajusta la altura de la imagen
              width: 30, // Ajusta el ancho de la imagen
            ),
          ),
          const Text(
            'VentaX',
            style: TextStyle(
              fontSize: 28, // Tamaño de fuente deseado
              color: Color(0xFFFF6B4E),
              fontWeight: FontWeight.bold, // Hace el texto negrita
              // Color deseado en hexadecimal
            ),
          ),
        ],
      ),
    );
  }
}