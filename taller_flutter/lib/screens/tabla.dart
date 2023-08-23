import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tabla extends StatefulWidget {
  const Tabla({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TablaState createState() => _TablaState();
}

class _TablaState extends State<Tabla> {
  List<Map<String, dynamic>> registros = [
    {
      "visitante": "Juan Pérez",
      "torre": "A",
      "apartamento": "101",
      "personaAutoriza": "Juan Pérez",
      "fechaIngreso": "2023-08-15 09:00",
      "transporte": "carro",
      "fechaSalida": ""
    },
    {
      "visitante": "Maria González",
      "torre": "B",
      "apartamento": "202",
      "personaAutoriza": "María González",
      "fechaIngreso": "2023-08-15 10:30",
      "transporte": "caminando",
      "fechaSalida": ""
    },
    {
      "visitante": "Lucia Rodríguez",
      "torre": "C",
      "apartamento": "303",
      "personaAutoriza": "Luis Rodríguez",
      "fechaIngreso": "2023-08-15 11:45",
      "transporte": "bicicleta",
      "fechaSalida": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingresos"),
      ),
      body: ListView.separated(
        itemCount: registros.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          final registro = registros[index];
          return GestureDetector(
            onTap: () async {
              final bool confirmarSalida = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Confirmar salida"),
                    content: const Text("¿Desea registrar la hora de salida?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text("Cancelar"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                          setState(() {
                            registro["fechaSalida"] = DateTime.now().toString();
                          });
                        },
                        child: const Text("Aceptar"),
                      ),
                    ],
                  );
                },
              );

              if (confirmarSalida) {
                setState(() {
                  DateTime now = DateTime.now();
                  DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
                  String formattedDateTime = formatter.format(now);

                  registro["fechaSalida"] = formattedDateTime;
                });
              }
            },
            child: Card(
              elevation: 4, // Añade una sombra para resaltar la carta
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // Bordes redondeados
              ),
              child: ListTile(
                title: Text(
                    "Visitante: ${registro["visitante"]}\nTorre: ${registro["torre"]} - Apartamento: ${registro["apartamento"]}"),
                subtitle: Text(
                    "Autoriza el acceso: ${registro["personaAutoriza"]}\nTransporte: ${registro["transporte"]}\nFecha de ingreso: ${registro["fechaIngreso"]}\nFecha de salida: ${registro["fechaSalida"]}"),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
    );
  }
}
