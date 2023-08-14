import 'package:flutter/material.dart';

class InfoPerso extends StatelessWidget {
  const InfoPerso({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(144, 4, 61, 92),
        title: const Text('Informacion personal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
                height: 20,
                child: Text(
                  'Daniel Yovany Rivera Torres',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              'https://play-lh.googleusercontent.com/bL-PMSgp_cHXNNj2tmP4AWKEFLjCW3HZGKWMvcSm6KcEy38tb4cQ_SQaEZtY1KaKvA',
              width: 100,
              height: 100,
            ), // Coloca tu imagen aquí
            const SizedBox(
              height: 20,
            ), // Espacio debajo de la imagen
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
                          child: Text("Información personal",
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
                                Text("Informacion profesional:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                    "Soy un profesional de TI con más de 5 años de experiencia en desarrollo de software y soluciones tecnológicas. Mi enfoque se centra en la creación de aplicaciones móviles y web de alta calidad, combinando sólidas habilidades técnicas con una pasión por la innovación."),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Telefono:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("3094859384"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Correo:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("danielRtorres89@gmoutlook.com"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "Habilidades con softwares y herramientas:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                    "Dominio avanzado de Microsoft Office (Word, Excel, PowerPoint) para una eficiente administración de documentos y presentaciones."),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Edad:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("23 Años"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Ciudad de residencia:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("Medellin"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Nacionalidad: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("Colombiana"),
                              ]))
                    ])),
          ],
        ),
      ),
    );
  }
}
