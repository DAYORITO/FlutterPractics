import 'package:bottombar_apidolargov/themes/temaoscuro.dart';
import 'package:flutter/material.dart';

import 'Sreens/comentarios.dart';
import 'Sreens/conversiones.dart';
import 'Sreens/generalInfo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DarkTheme.themeData,
      home: const Navegacion(),
    );
  }
}

class Navegacion extends StatefulWidget {
  const Navegacion({super.key});

  @override
  State<Navegacion> createState() => _NavegacionState();
}

class _NavegacionState extends State<Navegacion> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Informacion(),
    ConversionesDolar(),
    Comentarios(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dolar App', style: TextStyle(fontFamily: 'Lobster'),),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informacion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Conversiones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Comentarios',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
