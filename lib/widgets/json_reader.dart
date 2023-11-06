import 'dart:convert';
import 'package:flutter/services.dart';

class JsonReader {
  Future<Map<String, dynamic>?> loadJsonData(String jsonPath) async {
    try {
      final String fileContent = await rootBundle.loadString(jsonPath);
      final decodedData = json.decode(fileContent);
      return decodedData;
    } catch (e) {
      return null;
    }
  }
}
