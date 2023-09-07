import 'package:flutter/material.dart';

import '../data/api_service.dart';

class DepartamentosApp extends StatelessWidget {
  DepartamentosApp({super.key});
  final apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Departamentos de Polombia'),
      ),
      body: FutureBuilder(
        future: apiService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text('No data available'),
            );
          } else {
            List<dynamic> departmentList = snapshot.data;

            return ListView.builder(
              itemCount: departmentList.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(departmentList[index]['nomdepto']),
                );
              }
              );
          }
        },
      ),
    );
  }
}