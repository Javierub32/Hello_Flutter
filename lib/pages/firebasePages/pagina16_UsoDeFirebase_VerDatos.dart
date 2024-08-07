import 'package:flutter/material.dart';

//Servicios de firebase
import 'package:crud_firebase/services/firebase_service.dart';

class pagina16_UsoDeFirebase_VerDatos extends StatefulWidget {
  const pagina16_UsoDeFirebase_VerDatos({super.key});

  @override
  State<pagina16_UsoDeFirebase_VerDatos> createState() => _pagina16_UsoDeFirebase_VerDatosState();
}

class _pagina16_UsoDeFirebase_VerDatosState extends State<pagina16_UsoDeFirebase_VerDatos> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage", textAlign: TextAlign.start),
        backgroundColor: const Color(0x2F0084FF), // Cambiar el color de fondo aquí
      ),
      body: Center(
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
                  return ListTile(                    
                    title: Text(user, textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),
                    onTap: () async {
                      await Navigator.pushNamed(context, "/edit", arguments: {
                        'nombre': user,
                        'id': respuesta.data?[index]['id']
                      });

                      setState(() {});
                    },

                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Eliminar Usuario"),
                            content: Text("Estás seguro de eliminar a $user?"),
                            actions: [
                              TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text("Cancelar")
                              ),

                              TextButton(
                                onPressed: () async{
                                  await deleteUser(respuesta.data?[index]['id']).then((_) => Navigator.pop(context));
                                  setState(() {});
                                },
                                child: Text("Sí", style: TextStyle(color: Colors.red)),
                              ),
                            ],
                          );
                        } 
                      );                 
                    },
                  );
                },
              );
            }
          },
        ), 
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //El await hace que la funcion espere a que se cierre la ventana de añadir para seguir ejecutando
          await Navigator.pushNamed(context, "/add");

          setState((){});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}