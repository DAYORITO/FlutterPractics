import 'package:ejercicio/screens/widgets/inputAves.dart';
import 'package:flutter/material.dart';

class CalculoAves extends StatefulWidget {
  const CalculoAves({super.key});

  @override
  State<CalculoAves> createState() => _CalculoAvesState();
}

class _CalculoAvesState extends State<CalculoAves> {
  TextEditingController value1controller = TextEditingController();
  TextEditingController value2controller = TextEditingController();
  TextEditingController value3controller = TextEditingController();
  double resultado = 0;
  @override
  void dispose() {
    value1controller.dispose(); // Liberar recursos del controlador
    value2controller.dispose();
    value3controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo de alimento para aves'),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 224, 215),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputAve(
                  value1controller: value1controller,
                  labelText: 'Cantidad de aves',
                  hintText: 'Ingrese la cantidad de aves',
                ),
                const SizedBox(
                  height: 10,
                ),
                InputAve(
                  value1controller: value2controller,
                  labelText: 'Consumo por ave por dia',
                  hintText: 'Consumo en gr',
                ),
                const SizedBox(
                  height: 10,
                ),
                InputAve(
                  value1controller: value3controller,
                  labelText: 'Nro de bultos de concentrado',
                  hintText: 'Numero de bultos que tiene',
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        double primerresultado = double.parse(value3controller.text) *40000 /
                            (double.parse(value1controller.text) *
                                double.parse(value2controller.text));
                                resultado = double.parse(primerresultado.toStringAsFixed(2));
                      });
                    },
                    child: const Text('Calcular')),
                const SizedBox(height: 30),
                Text(
                  'El resultado es: $resultado dias',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Radio para hacer la imagen redonda
                  child: Image.asset(
                    'logo_ave.png',
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    fit: BoxFit.cover, // Ajustar la imagen para llenar el cuadro recortado
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
