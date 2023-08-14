import 'package:flutter/material.dart';

class FuncionNumero extends StatelessWidget{
  const FuncionNumero({super.key});

  @override
  State<FuncionNumero> createState()=> _FuncionNumeroState();
}

class _FuncionNumeroState extends State<FuncionNumero>{
  // String numeros='0 0 0';
  // String calcularNumero() {
  //   var num1 = Random().nextInt(9);
  //   var num2 = Random().nextInt(9);
  //   var num3 = Random().nextInt(9);
  //   return ('$num1  $num2  $num3');
    
  // }
  int sumA=0,sumB=0,sumC=0,sumatoria=0;
  String respuesta = "Nadie";
  String validacion (sumA,sumB,sumC){
    String r = (sumA>sumB && sumA>sumC) ? 'A': (sumB>sumA && sumB>sumC) ? 'B' : (sumC>sumB && sumC>sumA) ? 'C':'Nadie';
    return r;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 97, 168, 214),
      appBar: AppBar(
        // title: const Text('Tu app de la suerte para hacer el baloteishon', style: TextStyle(color: Color.fromARGB(255, 26, 3, 66)),),
        title: const Text('Votacion', style: TextStyle(fontSize: 38),)
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          // const Text('Gran generador de numeros <3 \n', style:TextStyle(fontSize: 40)),
          // Text('Resultado \n $numeros',style: const TextStyle(fontSize: 25),)
          const Text('Votacion', style: TextStyle(fontSize: 35)),
           Text('Candidato A:$sumA Cadidato B:$sumB Canidato C:$sumC\n', style: const TextStyle(fontSize: 30)),
           Text('\n Total Votos: $sumatoria' , style: const TextStyle(fontSize: 25)),
           Text('El ganador es: $respuesta' , style: const TextStyle(fontSize: 25)),
          ]
        ),
      ),
      floatingActionButton: Wrap(
        children: [
          
          FloatingActionButton(
            child: const Text('A',style: TextStyle(fontSize: 15),),
            onPressed: (){
              sumA++;
              sumatoria++;
              respuesta = validacion(sumA, sumB, sumC);
              setState(() {
              });
            }),
          FloatingActionButton(
            child: const Text('B',style: TextStyle(fontSize: 15),),
            onPressed: (){
              sumB++;
              sumatoria++;
              respuesta = validacion(sumA, sumB, sumC);
              setState(() {
              });
            }),
            FloatingActionButton(
            child: const Text('C',style: TextStyle(fontSize: 15),),
            onPressed: (){
              sumC++;
              sumatoria++;
              respuesta = validacion(sumA, sumB, sumC);
              setState(() {
              });
            })
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.refresh),
      //   onPressed: (){

      //     // setState(() {
      //     //   numeros = calcularNumero();
      //     // });
      //   }),
    );
  }
}