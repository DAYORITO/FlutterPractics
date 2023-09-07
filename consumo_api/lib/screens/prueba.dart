import 'package:flutter/material.dart';
import '../data/api_service.dart';

class PokeApp extends StatefulWidget {
  PokeApp({super.key});
  TextEditingController controlador1value= TextEditingController();

  @override
  State<PokeApp> createState() => _PokeAppState();
}

class _PokeAppState extends State<PokeApp> {
  final apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Poke App'),
        ),
        body: FutureBuilder(
          future: apiService.fetchData('pokemon/25'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Column(
                  children: [
                    Text(snapshot.data['name']),
                    Image.network(snapshot.data['sprites']['front_default']),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
