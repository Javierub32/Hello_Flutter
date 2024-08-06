import 'package:flutter/material.dart';

//Servicios de firebase
import 'package:crud_firebase/services/firebase_service.dart';

class Pagina16_UsoDeFirebase01 extends StatefulWidget {
  const Pagina16_UsoDeFirebase01({super.key});

  @override
  State<Pagina16_UsoDeFirebase01> createState() => _Pagina16_UsoDeFirebase01State();
}

class _Pagina16_UsoDeFirebase01State extends State<Pagina16_UsoDeFirebase01> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: getUsers(),

        //* respuesta es el resultado que nos da firebase
        builder: (context, respuesta) {
          if (respuesta.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (respuesta.hasError) {
            return Text('Error: ${respuesta.error}');
          } else if (!respuesta.hasData || respuesta.data == null) {
            return Text('No data available');
          } else {
            return ListView.builder(
              //El ? es para que no de error si respuesta.data es null
              itemCount: respuesta.data?.length,
              itemBuilder: (context, index) {
                //Si respuesta.data es null, user será 'Unknown'
                String user = respuesta.data?[index]['nombre'] ?? 'Unknown';
                return Text(user);
              },
            );
          }
        },
      ), 
      //Text("Pagina 16", style: TextStyle(fontSize: 30)),
    );
  }
}