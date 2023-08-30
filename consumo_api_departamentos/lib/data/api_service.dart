import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://www.datos.gov.co/resource/ya3g-4kqg.json';

  Future<dynamic>fetchData(String endpoint) async {
    final response = await http.get(Uri.parse(baseUrl + endpoint));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}

// class Pokemon {
  
//   final String name;
//   final String imageUrl;

//   Pokemon({required this.name, required this.imageUrl});

//   factory Pokemon.fromJson(Map<String, dynamic> json) {
//     return Pokemon(
//       name: json['name'],
//       imageUrl: json['sprites']['front_default'],
//     );
//   }
// }
