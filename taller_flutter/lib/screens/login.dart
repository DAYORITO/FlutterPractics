import 'package:flutter/material.dart';
import 'package:taller_flutter/screens/menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  final value1Controller = TextEditingController();
  final value2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Inicio de sesion AppTower",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 210, 255, 248),
          child: Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Logo.png",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                        controller: value1Controller,
                        obscureText: false,
                        decoration: InputDecoration(
                            filled: true, // Indicar que se debe llenar el fondo
                            fillColor:
                                Colors.white, // Color de fondo del TextField
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(
                                      255, 0, 0, 0)), // Color del borde
                              borderRadius: BorderRadius.circular(
                                  10.0), // Radio de la esquina del borde
                              gapPadding: 5.0,
                            ),
                            labelText: 'Ingresa tu usuario')),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: value2Controller,
                      obscureText: !_isPasswordVisible, // Ocultar la contraseña si _isPasswordVisible es verdadero
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                          borderRadius: BorderRadius.circular(10.0),
                          gapPadding: 5.0,
                        ),
                        labelText: 'Ingresa tu contraseña',
                        // Agregar el ícono de visibilidad/ocultación de la contraseña
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Menu()));
                        },
                        child: const Text("Ingresar"))
                  ])),
        ),
      ),
    );
  }
}
