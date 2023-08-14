import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_screen/card.dart';

import 'mipapa.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> Iconos =[Icons.water, Icons.oil_barrel, Icons.donut_small,Icons.filter_center_focus,Icons.local_florist,Icons.color_lens];
    List<String> nombres =['Agua','Aceite','Sal','Azucar','Flores','Y muchos colores'];
    // lista (){
    //   for (int i=0;i<Iconos.length;i++){
    //     ListTile(leading: Icon(Iconos[i]), title: Text(nombres[i]),);
    //   }
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 35, 49),
        title: const Text('¿Cómo crear a la niñita perfecta?'),
      ),
      body: Center(
        child: ListView(
          children : [
            // ListTile(
            //   leading: Icon(Icons.water),
            //   title: Text('Agua')
            // ),
            // ListTile(
            //   leading: Icon(Icons.oil_barrel),
            //   title: Text('Aceite')
            // ),
            // ListTile(
            //   leading: Icon(Icons.donut_small),
            //   title: Text('Sal')
            // ),
            // ListTile(
            //   leading: Icon(Icons.filter_center_focus),
            //   title: Text('Azucar')
            // ),
            // ListTile(
            //   leading: Icon(Icons.local_florist),
            //   title: Text('Flores')
            // ),
            // ListTile(
            //   leading: Icon(Icons.color_lens),
            //   title: Text('Y muchos colores')
            // )
            ...Iconos.map(
              (icono)=> ListTile(
                leading: Icon(icono),
                title: Text(nombres[Iconos.indexOf(icono)]),
                onTap: (){
                  // print(nombres[Iconos.indexOf(icono)]);
                  final route = MaterialPageRoute(
                    builder: (context)=> const Mipapa(),
                    );
                    Navigator.push(context, route);
                  final route2 = MaterialPageRoute(
                    builder: (context)=> const CardScreen(),
                    );
                    Navigator.push(context, route2);

                },
              )
            ).toList()
            ]
      
      )
    )
    );
  }
}