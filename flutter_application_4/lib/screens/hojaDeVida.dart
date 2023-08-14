import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/conocimientoTec.dart';
import 'package:flutter_application_4/screens/experiencia.dart';
import 'package:flutter_application_4/screens/infoAcademica.dart';
import 'package:flutter_application_4/screens/informacionPersonal.dart';

class HojaDeVida extends StatelessWidget {
  const HojaDeVida({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<String> entries = <String>['Informacion Personal', 'Informacion Academica', 'Conocimientos Tecnicos',
    'Experiencia Laboral'];
    final List<Widget> rutas = [
      const InfoPerso(),
      const InfoAcademic(),
      const Conocimientos(),
      const Experiencia()
    ];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(144, 4, 61, 92),
        title: const Text('Revisor de hojas de vida'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(entries[index]),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => rutas[index]));
            },    
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),  
  )
  
    );
  }
}