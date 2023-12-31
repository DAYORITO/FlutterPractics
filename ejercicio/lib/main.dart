import 'package:ejercicio/screens/calculoAves.dart';
import 'package:ejercicio/screens/helpers/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeBonito.themaBonito,
      home: const CalculoAves()
    );
  }
}
