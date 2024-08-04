import "package:flutter/cupertino.dart";
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
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.center, //Se alinea donde queramos
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max, //Ocupa el tamaño mínimo/máximo
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width *0.5,
            child: Text("Patata", textAlign: TextAlign.center)
          ),
          Text("Constantinopla"),
        ],
      ),
    );
  }
}  