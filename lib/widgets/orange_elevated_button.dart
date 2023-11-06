import 'package:flutter/material.dart';

class OrangeElevatedButton extends StatelessWidget {
  final Key? key;
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? buttonStyle; // Nueva propiedad para el estilo del botón

  OrangeElevatedButton({
    this.key,
    required this.onPressed,
    required this.child,
    this.buttonStyle, // Parámetro opcional para el estilo del botón
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: key,
      onPressed: onPressed,
      style: buttonStyle ?? const ButtonStyle(
      ),
      child: child,

    );
  }
}
