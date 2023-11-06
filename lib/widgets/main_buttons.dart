import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';


class MainButtons extends StatelessWidget {
  final bool isOrange; // Un parámetro que determina el estilo del botón
  final String buttonText; // Texto del botón

  MainButtons({required this.isOrange, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    const widthPercentage = 75.0; // Ancho del 50%
    const heightPercentage = 09.0; // Alto del 10%

    final buttonWidth = (screenWidth * widthPercentage / 100).clamp(0.0, screenWidth);
    final buttonHeight = (screenHeight * heightPercentage / 100).clamp(0.0, screenHeight);

    ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(isOrange ? const Color(0xFFFF6B4E) : Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );

    if (!isOrange) {
      buttonStyle = buttonStyle.copyWith(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(const Color(0xFFFF6B4E)),
        side: MaterialStateProperty.all(const BorderSide(
          color: Color(0xFFFF6B4E),
          width: 2.0,
        )),
      );
    }

    return Center(
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        margin: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            // Agrega el código que deseas que se ejecute cuando se presiona el botón
          },
          child: Text(
            buttonText, // Usa el texto del parámetro
            style: TextStyle(
              color: isOrange ? Colors.white :  const Color(0xFFFF6B4E),
            ),
          ),
        ),
      ),
    );
  }
}
