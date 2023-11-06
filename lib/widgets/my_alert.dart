import 'package:flutter/material.dart';





void newAccountAlert(BuildContext context) {
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






void loginInAlert(BuildContext context) {
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
