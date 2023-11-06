import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'json_reader.dart'; // Importa el componente para leer JSON
import 'image_slider_indicator.dart';

class SvgImageSlider extends StatefulWidget {
  final String imagesJsonPath; // Ruta al archivo JSON de imágenes
  final String textJsonPath;   // Ruta al archivo JSON de texto

  SvgImageSlider({
    required this.imagesJsonPath,
    required this.textJsonPath,
  });

  @override
  _SvgImageSlider createState() => _SvgImageSlider();
}

class _SvgImageSlider extends State<SvgImageSlider> {
  List<Map<String, dynamic>> imageList = [];
  List<Map<String, dynamic>> textList = [];
  final JsonReader _jsonReader = JsonReader();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    loadImagesFromJson(widget.imagesJsonPath);
    loadTextFromJson(widget.textJsonPath);
  }

  Future<void> loadImagesFromJson(String jsonPath) async {
    final imageData = await _jsonReader.loadJsonData(jsonPath);
    if (imageData != null && imageData['images'] is List) {
      setState(() {
        imageList = List<Map<String, dynamic>>.from(imageData['images']);
      });
    }
  }

  Future<void> loadTextFromJson(String jsonPath) async {
    final textData = await _jsonReader.loadJsonData(jsonPath);
    if (textData != null && textData['login'] is List) {
      setState(() {
        textList = List<Map<String, dynamic>>.from(textData['login']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double imageHeight = sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.height * 0.4
            : 500.0;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              items: imageList.asMap().entries.map((entry) {
                final int index = entry.key;
                final Map<String, dynamic> imageData = entry.value;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        imageData['imagePath'],
                        height: imageHeight,
                      ),
                      Text(
                        textList.length > index ? textList[index]['text'] : '',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.5,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                viewportFraction: 1,
              ),
            ),
            ImageSliderIndicator(currentIndex: currentIndex, itemCount: imageList.length),
          ],
        );
      },
    );
  }
}
