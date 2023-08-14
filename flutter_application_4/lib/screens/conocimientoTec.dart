import 'package:flutter/material.dart';

class Conocimientos extends StatelessWidget {
  const Conocimientos({super.key});

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
                          child: Text("Conocimientos tecnicos",
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
                                Text("Habilidades Técnicas:", style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text("- Desarrollo de aplicaciones móviles nativas (Android e iOS)"),
                                Text("- Programación en Java, Kotlin y Swift"),
                                Text("- Uso avanzado de Flutter para creación de interfaces modernas"),
                                Text("- Integración de servicios RESTful y API de terceros"),
                                Text("- Gestión de bases de datos SQL y NoSQL"),
                                Text("- Diseño responsivo para aplicaciones móviles y web"),
                                SizedBox(height: 10),

                                Text("Herramientas y Tecnologías:", style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text("- Android Studio para desarrollo de apps en Android"),
                                Text("- Xcode para desarrollo de aplicaciones iOS"),
                                Text("- Firebase para autenticación y almacenamiento en la nube"),
                                Text("- Visual Studio Code como entorno de desarrollo preferido"),
                                Text("- Git y control de versiones para colaboración en equipos"),
                                SizedBox(height: 10),

                                Text("Idiomas:", style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text("- Inglés: Nivel Avanzado (C1)"),
                                Text("- Alemán: Nivel Intermedio (B2)"),
                                Text("- Chino: Nivel Intermedio (B2)"),
                                SizedBox(height: 10),
                              ]
                              )
                              )
                    ])),
          ],
        ),
      ),
    );
  }
}