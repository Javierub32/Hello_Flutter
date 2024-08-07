import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';


class pagina17_UsoDeFireBase_AnyadirDatos extends StatefulWidget {
  const pagina17_UsoDeFireBase_AnyadirDatos({super.key});

  @override
  State<pagina17_UsoDeFireBase_AnyadirDatos> createState() => _pagina17_UsoDeFireBase_AnyadirDatosState();
}

class _pagina17_UsoDeFireBase_AnyadirDatosState extends State<pagina17_UsoDeFireBase_AnyadirDatos> {
  TextEditingController _nombreController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("AddPage", textAlign: TextAlign.start),
        backgroundColor: const Color(0x2F0084FF), // Cambiar el color de fondo aquí
      ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  hintText: "Introduce el nombre",
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () async{
                await addUser(_nombreController.text).then((_) => Navigator.pop(context));
              }, 
              
              child: const Text("Guardar"),
            ),
          ],
        ),
      );
  }
}