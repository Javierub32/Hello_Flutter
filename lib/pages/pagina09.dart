import 'package:flutter/material.dart';

class Pagina09_Listas extends StatefulWidget {
  const Pagina09_Listas({super.key});

  @override
  State<Pagina09_Listas> createState() => _Pagina09_ListasState();
}

class _Pagina09_ListasState extends State<Pagina09_Listas> {
  List<Persona> personas = [
    Persona("Juan", "Capo", 25),
    Persona("Pedro","Pérez", 30),
    Persona("Luis", "García", 35),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personas.length,
      itemBuilder: (context, index) {
        return ListTile(
          onLongPress: () {
            /*
            setState(() {
              personas.removeAt(index);
            });
            */
            _borrarPersona(context, personas[index]);
          },

          //! En Dart, hay que hacer las concatenaciones así
          title: Text("${personas[index].nombre} ${personas[index].apellido}"), 
          subtitle: Text('Edad: ${personas[index].edad}'),
          leading: CircleAvatar(
            child: Text(personas[index].nombre.substring(0,1)),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );   
  }

  _borrarPersona(context, Persona persona){
    showDialog(
      context: context,
      builder: (alertDialog){
        return AlertDialog(
          title: Text("Eliminar Persona"),
          content: Text("¿Estás seguro de eliminar a ${persona.nombre} ${persona.apellido}?"),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),

            TextButton(
              onPressed: (){
                setState(() {
                  personas.remove(persona);
                });
                Navigator.pop(context);
              },
              child: Text("Eliminar", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}


class Persona{
  String _nombre;
  String _apellido;
  int _edad;

  Persona(this._nombre, this._apellido, this._edad);

  String get nombre => _nombre;

  set nombre(String nombre){
    _nombre = nombre;
  }

  String get apellido => _apellido;

  set apellido(String apellido){
    _apellido = apellido;
  }

  int get edad => _edad;

  set edad(int edad){
    if(edad >= 0){
      _edad = edad;
    }
  }
}