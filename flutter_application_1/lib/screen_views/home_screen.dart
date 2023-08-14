
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 90, 143),
      appBar: AppBar(
        title: const Text('Holi', style: TextStyle(color: Color.fromARGB(255, 4, 49, 27)),)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text('Welcome to me', style:TextStyle(fontSize: 48)),
          Text('$contador', style:const TextStyle(fontSize: 18),)],
          ),
      ),
      
      floatingActionButton: Wrap(
        children: [
          
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              contador++;
              print('Hola, Dias saludando $contador');
              setState(() {
              });
            }),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: (){
              contador--;
              print('Hola, Dias saludando $contador');
              setState(() {
              });
            }),
            FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: (){
              contador=0;
              print('Hola, Dias saludando $contador');
              setState(() {
              });
            })
        ],
      ),

                  
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icon.),
      //   onPressed: () { 
      //     contador--;
      //    },

      // ),
      // ]
      
        
    );
  }
}