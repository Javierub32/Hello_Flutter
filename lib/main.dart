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
          backgroundColor: const Color(0x2F0084FF), // Cambiar el color de fondo aquí
        
      ),
      body:  timeButton(),
    );
  }
}  

Widget timeButton(){
  return Center(
    child: ElevatedButton(
      onPressed: (){
        var time = DateTime.now();
        // ignore: avoid_print
        print(time);
      },
       child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.access_alarm),
          Text("Hora? UwU"),
        ],
       ), 
     ),
    );
}