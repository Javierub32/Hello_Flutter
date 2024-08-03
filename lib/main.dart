import "package:flutter/material.dart";

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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://www.publico.es/uploads/2019/06/04/5cf67831599d5.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://www.publico.es/uploads/2019/06/04/5cf67831599d5.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://www.publico.es/uploads/2019/06/04/5cf67831599d5.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://www.publico.es/uploads/2019/06/04/5cf67831599d5.jpg"),
          ),
        ],
      ),
    );
  }
}