import 'package:flutter/material.dart';

class ImageSliderIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  ImageSliderIndicator({required this.currentIndex, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final topMarginPercentage = .01; // Cambia este valor según el porcentaje deseado (por ejemplo, 5%)
    final topMargin = (screenHeight * topMarginPercentage) / 100;

    return Center(
      child: Container(
        margin: EdgeInsets.only(top: topMargin), // Margen superior en porcentaje
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(itemCount, (index) {
            return Container(
              width: 25.0,
              height: 7.0,
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: currentIndex == index ? Color(0xFFFF6B4E) : Color(0xFFFFC4C4C4),
                borderRadius: BorderRadius.circular(4.0), // Redondea las esquinas
              ),
            );
          }),
        ),
      ),
    );
  }
}
