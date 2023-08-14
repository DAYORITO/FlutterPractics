
import 'package:flutter/material.dart';

class Mipapa extends StatefulWidget {
  const Mipapa({super.key});

  @override
  State<Mipapa> createState() => _Mipapa();
}

class _Mipapa extends State<Mipapa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 35, 49),
        title: const Text('Comprapartes Mi Papá'),
      ),
      body: const Text('Aqui encuentras las partes de mi papá')
    );
  }
}