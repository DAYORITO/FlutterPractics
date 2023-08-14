import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/home_screen.dart';

void main(List<String> args) {
  runApp(const Correr());
}
class Correr extends StatelessWidget {
  const Correr({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}
