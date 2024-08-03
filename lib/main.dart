import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola Mundo"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center, //Se alinea donde queramos
        mainAxisSize: MainAxisSize.max, //Ocupa el tamaño mínimo/máximo
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text("Patata")
          ),

          Text("Hola01"),
        ],
      ),
    );
  }
}