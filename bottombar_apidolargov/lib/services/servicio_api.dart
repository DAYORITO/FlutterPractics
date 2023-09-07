import 'dart:js_util';

import 'package:http/http.dart' as http;
import 'dart:convert';

class ServicioApi {
  final String url = 'https://www.datos.gov.co/resource/ceyp-9c7c.json';
  Future<List<dynamic>> getDatos(String endpoint) async {
    final response = await http.get(Uri.parse(url + endpoint));
    final control = {};
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return throw Exception('Error al cargar los datos');
    }
  }
}
