import 'package:flutter/material.dart';

class ImageText extends StatelessWidget {
  final String text;

  ImageText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
    //  mainAxisAlignment: MainAxisAlignment.center
      //alignment: Alignment.bottomCenter,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          color: Color(0xFF000000),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
