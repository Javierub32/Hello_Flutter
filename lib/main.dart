// ignore_for_file: unused_import
import "package:flutter/material.dart";

import "package:flutter_application_1/pages/pagina04.dart";
import 'package:flutter_application_1/pages/pagina05.dart';
import 'package:flutter_application_1/pages/pagina06.dart';
import 'package:flutter_application_1/pages/pagina07.dart';
import 'package:flutter_application_1/pages/pagina08.dart';
import 'package:flutter_application_1/pages/pagina09.dart';
import 'package:flutter_application_1/pages/pagina10.dart';


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
      body: Pagina10_UsoDeAPI(),
    );
  }
}