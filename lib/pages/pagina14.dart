import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const Pagina14_PersistenciaDeDatos());

class Pagina14_PersistenciaDeDatos extends StatefulWidget {
  const Pagina14_PersistenciaDeDatos({super.key});

  @override
  State<Pagina14_PersistenciaDeDatos> createState() => _Pagina14_PersistenciaDeDatosState();
}

class _Pagina14_PersistenciaDeDatosState extends State<Pagina14_PersistenciaDeDatos> {
  int counter = 0;

  void _changeValue() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      counter++;

      preferences.setInt('value', counter);
    });
  }

  @override
  void initState(){
    super.initState();
    _loadCounter();
  }

  void _loadCounter() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      /*
      if(preferences.getInt('value') == null){
        counter = 0;
        preferences.setInt('value', counter);
      }else{
        counter = preferences.getInt('value')!;
      }
      */

      counter = preferences.getInt('value') ?? 0; //Te pone el valor por defecto si no existe
    });
  } 

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(), style: const TextStyle(fontSize: 30)),
          
              ElevatedButton(
                onPressed: (){
                  _changeValue();
                },
                child: Text('Incrementar'),
              ),
            ],
          ), 
          
        ),
      ),
    );
  }
  
}