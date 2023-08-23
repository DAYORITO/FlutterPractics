import 'package:flutter/material.dart';
import 'package:taller_flutter/screens/tabla.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  

  @override
  Widget build(BuildContext context) {
    final List<String> vistas= <String>["Ingresos", "Visitantes", "Visitas"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menus/Procesos"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        itemCount: vistas.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text(vistas[index]),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Tabla()));
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
    );
  }
}