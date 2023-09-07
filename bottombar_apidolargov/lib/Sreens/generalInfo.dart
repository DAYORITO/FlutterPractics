// ignore: file_names
import 'dart:js_interop';

import 'package:bottombar_apidolargov/services/servicio_api.dart';
import 'package:flutter/material.dart';

class Informacion extends StatefulWidget {
  const Informacion({super.key});

  @override
  State<Informacion> createState() => _InformacionState();
}

class _InformacionState extends State<Informacion> {
  late Future<List<Map<String, dynamic>>> datos;

  Map<String, dynamic> _ultimoRegistro = {};
  String fecha = '2023-09-01';

  @override
  void initState() {
    super.initState();
    _cargarRegistro(fecha);
  }

  Future<void> _cargarRegistro(String fecha) async {
    try {
      if (!fecha.isNull) {
        final data = await ServicioApi().getDatos('?vigenciadesde=$fecha');
        if (data.isEmpty) {
          setState(() {
            _ultimoRegistro = {'valor': 'No hay datos', 'vigenciadesde': 'Sin datos ', 'vigenciahasta': 'Sin datos '};
          });
        }
        setState(() {
          _ultimoRegistro = data.first;
        });
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Valor del dolar',
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.red, width: 3),
                color: const Color.fromARGB(103, 244, 67, 54),
              ),
              child: _ultimoRegistro.isNotEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _ultimoRegistro['valor'] == 'No hay datos'
                            ? const Text(
                                'No hay datos',
                                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                              )
                            :
                        Text("\$${_ultimoRegistro['valor']}", style: const TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold), ),
                        Text(
                            'Desde: ${_ultimoRegistro['vigenciadesde'].toString().substring(0, 10)} - Hasta: ${_ultimoRegistro['vigenciahasta'].toString().substring(0, 10)}'),
                      ],
                    )
                  : const CircularProgressIndicator(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child:TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'yyyy-mm-dd',
                border: OutlineInputBorder(),
                labelText: 'Fecha',
              ),
            ),
            ),
            
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                fecha = _controller.text;
                _cargarRegistro(fecha);
              },
              child: const Text('Consultar'),
            ),
          ],
        ),
      ),
    );
  }
}
