import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';


class pagina18_UsoDeFirebase_ActualizarDatos extends StatefulWidget {
  const pagina18_UsoDeFirebase_ActualizarDatos({super.key});

  @override
  State<pagina18_UsoDeFirebase_ActualizarDatos> createState() => _pagina18_UsoDeFirebase_ActualizarDatosState();
}

class _pagina18_UsoDeFirebase_ActualizarDatosState extends State<pagina18_UsoDeFirebase_ActualizarDatos> {
  TextEditingController _nombreController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    _nombreController.text = arguments['nombre'];
    String _id = arguments['id'];

    return Scaffold(
        appBar: AppBar(
        title: const Text("EditPage", textAlign: TextAlign.start),
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
            //Hola

            ElevatedButton(
              onPressed: () async{
                await updateUser(_nombreController.text, _id).then((_) => Navigator.pop(context));
              }, 
              
              child: const Text("Actualizar"),
            ),
          ],
        ),
      );
  }
}