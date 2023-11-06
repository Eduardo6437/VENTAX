// lib/main.dart
import 'package:flutter/material.dart';
import 'package:venta_x/screens/login/login_screen.dart'; // Importa la pantalla de inicio de sesión
import 'package:venta_x/routes/app_routes.dart'; // Importa las rutas

void main() {
  runApp(MaterialApp(
    initialRoute: AppRoutes.login, // Ruta inicial
    routes: {
      AppRoutes.login: (context) => LoginScreen(), // Página de inicio de sesión
      // Puedes agregar más rutas según sea necesario
    },
  ));
}
