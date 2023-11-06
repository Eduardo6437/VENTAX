import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class JsonFileReaderWidget extends StatefulWidget {
  const JsonFileReaderWidget({Key? key}) : super(key: key);

  @override
  _JsonFileReaderWidgetState createState() => _JsonFileReaderWidgetState();
}



class _JsonFileReaderWidgetState extends State<JsonFileReaderWidget> {
  Map<String, dynamic>? jsonData;
  String error = '';

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }



  Future<void> loadJsonData() async {
    try {
      final String fileContent = await rootBundle.loadString('assets/text.json');
      final decodedData = json.decode(fileContent);

      setState(() {
        jsonData = decodedData;
        error = '';
      });
    } catch (e) {
      jsonData = null;
      error = 'Error al leer o analizar el archivo JSON: $e';
    }
  }














  @override
  Widget build(BuildContext context) {
    return Center(
      child: jsonData != null
          ? Text(
        'Imagen en login1: ${jsonData!['login']['img1']}',
        style: TextStyle(fontSize: 20, color: Colors.red),
      )
          : Text(error, style: TextStyle(fontSize: 20, color: Colors.red)),
    );
  }
}
