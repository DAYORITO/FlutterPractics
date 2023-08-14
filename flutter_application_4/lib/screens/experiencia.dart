import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({super.key});

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
                          child: Text("Experiencia laboral",
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
                                Text("Experiencia Laboral:", style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text("- Desarrollador de Software en Tech Solutions Ltd."),
                                Text("- Período: Marzo 20XX - Presente"),
                                Text("- Colaboré en el diseño y desarrollo de aplicaciones móviles para clientes clave."),
                                Text("- Utilicé Flutter y Dart para crear interfaces de usuario modernas y fluidas."),
                                Text("- Integré APIs externas para funcionalidades de pago y geolocalización."),
                                Text("- Colaboré en la optimización de rendimiento para mejorar la velocidad y eficiencia de las aplicaciones."),
                                SizedBox(height: 10),

                                Text("- Desarrollador Web en WebTech Innovations"),
                                Text("- Período: Julio 20XX - Diciembre 20XX"),
                                Text("- Trabajé en el desarrollo de sitios web y aplicaciones web interactivas."),
                                Text("- Utilicé tecnologías como HTML, CSS, JavaScript y React para implementar interfaces de usuario dinámicas."),
                                Text("- Implementé funciones de autenticación y seguridad en las aplicaciones web."),
                                Text("- Colaboré con el equipo de diseño para garantizar una experiencia de usuario excepcional."),
                                SizedBox(height: 10),

                                Text("- Pasante en Innovación Digital Corp."),
                                Text("- Período: Enero 20XX - Mayo 20XX"),
                                Text("- Participé en el diseño y desarrollo de prototipos de aplicaciones móviles y web."),
                                Text("- Aprendí a utilizar metodologías ágiles y técnicas de desarrollo colaborativo."),
                                Text("- Colaboré en la identificación y resolución de problemas técnicos en proyectos en curso."),
                                Text("- Participé en reuniones de equipo para planificación y revisión de proyectos."),
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
