import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card', style:TextStyle(color: Colors.lime)),
        backgroundColor: Colors.indigo
      ),
      body: 
      
          const Card(
            child: Column(
            children: [
              ListTile(leading: Icon(Icons.abc_rounded),
            title: Text('SENA'),
            subtitle: Text('Al fin dio. Sena es una entidad del estado que busca generar e incentivar el estudio profesional y la capcaitacion siendo asi, como un impacto que las personas colombianas puedan ser mas competentes en el ambito laboral')
            ),
            Row(
              children: [
                              Image(
        image: NetworkImage('https://avatars.githubusercontent.com/u/109951?s=400&v=4'),
        height: 140,
      )
              ],
            )
            ],
                        )
          
            
           
          ),
          

    );
  }
}

