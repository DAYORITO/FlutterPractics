import 'package:flutter/material.dart';

class InfoAcademic extends StatelessWidget {
  const InfoAcademic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(144, 4, 61, 92),
        title: const Text('Informacion academica'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: const Color.fromARGB(144, 100, 100, 255),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              right: 182, bottom: 5, top: 5, left: 5),
                          child: Text("Informacion Academica",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15)),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Título Universitario:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text(
                                    "-Ingeniería en Tecnologías de la Información"),
                                SizedBox(height: 2),
                                Text("SENA"),
                                SizedBox(height: 2),
                                Text(
                                    "Fecha de culminacion: 25 de octubre 2024"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Certifiaciones: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text(
                                    "-Certificación en Desarrollo de Aplicaciones Móviles"),
                                SizedBox(height: 2),
                                Text("Platzi"),
                                SizedBox(height: 2),
                                Text(
                                    "Fecha de culminacion: 24 de diciembre 2024"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "-Curso Avanzado en Desarrollo Web Full Stack"),
                                SizedBox(height: 2),
                                Text("UdeMy"),
                                SizedBox(height: 2),
                                Text(
                                    "Fecha de culminacion: 25 de octubre 2024"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Idiomas:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text("- Ingles C1"),
                                SizedBox(height: 2),
                                Text("- Aleman B2"),
                                SizedBox(height: 2),
                                Text("- Chino B2"),
                                SizedBox(
                                  height: 10,
                                ),
                              ]))
                    ])),
          ],
        ),
      ),
    );
  }
}
