import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get themeData {
    return ThemeData.dark().copyWith(
      primaryColor: Colors.black,
      hintColor: Colors.blueAccent,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blueAccent,
        textTheme: ButtonTextTheme.primary,
      ),

      
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lobster',
          ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 18, 20, 22),
        unselectedItemColor: Color.fromARGB(235, 199, 76, 76),
      ),
    );
  }
}