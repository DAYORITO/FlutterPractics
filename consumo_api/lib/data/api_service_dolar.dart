import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiDolar {
  final String baseUrl = 'https://pokeapi.co/api/v2/';

  Future<dynamic> fetchData(String endpoint) async {
    final response = await http.get(Uri.parse(baseUrl + endpoint), headers: {
    HttpHeaders.authorizationHeader: '9kAGOijyECfXedGS4yRcu91gBMMrAcMa',
  },);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}