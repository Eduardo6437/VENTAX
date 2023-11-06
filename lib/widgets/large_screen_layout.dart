import 'package:flutter/material.dart';
import 'orange_elevated_button.dart';
import 'image_slider.dart';

class LargeScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = 350.0; // Define el ancho deseado para los botones
    double buttonHeight = 50.0; // Define la altura deseada para los botones



    void _newAccoutAlert() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('BIENVENIDO'),
            content: const Text('¡CREAR CUENTA!'), // Mensaje de la alerta
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cierra la alerta
                },
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    }


    void _loginInAlert() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('BIENVENIDO'),
            content: const Text('¡ENTRAR!'), // Mensaje de la alerta
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cierra la alerta
                },
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    }



    return Center(
      child: Row(
        children: [
          // Parte izquierda con el slider de imágenes
          Container(
            width: MediaQuery.of(context).size.width / 2,

            child: ImageSlider(), // Debes crear la clase ImageSlider
          ),
          // Parte derecha con los botones centrados
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: OrangeElevatedButton(
                    onPressed: () {
                      // Acción al presionar el primer botón
                      _newAccoutAlert();
                    },
                    buttonStyle: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF6B4E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'NUEVA CUENTA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espacio entre los botones

                Container(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: OrangeElevatedButton(
                    onPressed: () {
                      // Acción al presionar el segundo botón
                      _loginInAlert();
                    },
                    buttonStyle: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Color(0xFFFF6B4E)),
                        ),
                      ),
                    ),
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(
                        color: Color(0xFFFF6B4E),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
