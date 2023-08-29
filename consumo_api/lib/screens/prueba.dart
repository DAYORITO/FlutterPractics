import 'package:flutter/material.dart';

import '../data/api_service.dart';

class PokeApp extends StatelessWidget {
  PokeApp({super.key});
  final apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Poke App'),
        ),
        body: FutureBuilder(
          future: apiService.fetchData('pokemon/5'),
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
