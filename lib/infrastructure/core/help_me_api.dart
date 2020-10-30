import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

const String baseUrl = 'https://help--me.herokuapp.com/api/v1';

@lazySingleton
class HelpMeApi {
  Future<List<Map<String, dynamic>>> getPrecautions() async {
    final response = await get('$baseUrl/precautions');
    return jsonDecode(response.body)['data'];
  }
}
