import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SvgImageSlider2 extends StatefulWidget {
  @override
  _SvgImageSlider2 createState() => _SvgImageSlider2();
}

class _SvgImageSlider2 extends State<SvgImageSlider2> {
  List<Map<String, dynamic>> imageList = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    try {
      final String fileContent = await rootBundle.loadString('assets/images.json');
      final decodedData = json.decode(fileContent);

      setState(() {
        if (decodedData['images'] is List) {
          imageList = List<Map<String, dynamic>>.from(decodedData['images']);
        }
      });
    } catch (e) {
      imageList = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        items: imageList.map((imageData) {
          return Container(
            child: SvgPicture.asset(
              imageData['imagePath'],
              // Ajusta otras propiedades de visualización de la imagen SVG aquí
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 300.0, // Ajusta la altura deseada del slider
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
