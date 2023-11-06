import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: .7, // El botón ocupa el 100% del ancho disponible
            //heightFactor: 1.0, // El botón ocupa el 100% del ancho disponible
            child: ElevatedButton(
              onPressed: () {
                // Acción para el primer botón
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFFFF6B4E)),
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
                  fontSize: 17.0,
                ),
              ),
            ),
          ),



          //const SizedBox(height: 20), // Espacio entre los botones
          FractionallySizedBox(
            widthFactor: 1.0,
            //heightFactor: 1.0, // El botón ocupa el 100% del ancho disponible
            child: ElevatedButton(
              onPressed: () {
                // Acción para el segundo botón
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: const BorderSide(color: Color(0xFFFF6B4E)),
                  ),
                ),
              ),
              child: const Text(
                'ENTRAR',
                style: TextStyle(
                  color: Color(0xFFFF6B4E),
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
