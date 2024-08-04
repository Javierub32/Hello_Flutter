import 'package:flutter/material.dart';

//* Este Widget spawnea un botón que te dice la hora
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