import 'package:flutter/material.dart';
import 'json_reader.dart'; // Importa JsonReader desde tu ruta
import 'main_buttons.dart';

class LoginButtons extends StatelessWidget {



  Future<List<String>> loadButtonTextFromJson() async {
    final jsonData = await JsonReader().loadJsonData('assets/text.json'); // Reemplaza con la ruta correcta
    final buttonData = jsonData?['login-button'] as List<dynamic>?;
    if (buttonData != null) {
      final buttonTextList = buttonData.map((item) {
        return (item as Map<String, dynamic>)['text'] as String;
      }).toList();
      return buttonTextList;
    }
    return ['Texto predeterminado', 'Texto predeterminado']; // Valores predeterminados si el JSON no es válido
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginButtons'),
      ),








      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [




            FutureBuilder<List<String>>(
              future: loadButtonTextFromJson(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(); // Muestra un indicador de carga mientras se obtiene el JSON.
                } else if (snapshot.hasData) {
                  final buttonTextList = snapshot.data;
                  return MainButtons(isOrange: true, buttonText: buttonTextList![0]);
                } else {
                  return const Text('Error al cargar JSON');
                }
              },
            ),








            SizedBox(height: 16), // Espacio entre los botones










            FutureBuilder<List<String>>(
              future: loadButtonTextFromJson(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Muestra un indicador de carga mientras se obtiene el JSON.
                } else if (snapshot.hasData) {
                  final buttonTextList = snapshot.data;
                  return MainButtons(isOrange: false, buttonText: buttonTextList![1]);
                } else {
                  return Text('Error al cargar JSON');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}























// import 'package:flutter/material.dart';
// import 'json_reader.dart'; // Importa JsonReader desde tu ruta
// import 'main_buttons.dart';
//
// class LoginButtons extends StatelessWidget {
//   final String orangeButtonText;
//   final String whiteButtonText;
//
//   LoginButtons({
//     required this.orangeButtonText,
//     required this.whiteButtonText,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('LoginButtons'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MainButtons(isOrange: true, buttonText: orangeButtonText),
//             SizedBox(height: 16), // Espacio entre los botones
//             MainButtons(isOrange: false, buttonText: whiteButtonText),
//           ],
//         ),
//       ),
//     );
//   }
// }
