import "package:flutter/material.dart";

bool subscrito = false;

//* Este Widget crea Alert Dialogs

//* Hay que crearlo así porque es un Widget dinámico, 
//* por eso difiere con los ejercicios anteriores
class Pagina07AlertDialog extends StatefulWidget {
  const Pagina07AlertDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Pagina07AlertDialogState createState() => _Pagina07AlertDialogState();
}

class _Pagina07AlertDialogState extends State<Pagina07AlertDialog> {
  void _mostrarAlerta(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (alertDialog){ //* La función alertDialog la estoy creando yo, si se llamase de otra forma, también funcionaría
        return AlertDialog(
          title: Text(subscrito ? "Desuscribirse" : "Subscribete"),
          content: Text(subscrito ? "Quieres desuscribirte?" : "Continua para suscribirte"),
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
                  subscrito = !subscrito;
                });
                Navigator.pop(context);
              },
              child: Text(subscrito ? "Desuscribirse" : "Suscribirse"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              _mostrarAlerta(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 253, 10, 10),
              foregroundColor: const Color.fromARGB(221, 243, 241, 241),
              minimumSize: const Size(150, 50),
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
      
            ),
            child: Text(subscrito ? "Cancelar Subscripción" : "Subscribete"),
          ),
    
          SizedBox(height: 35),
    
          Text(
            subscrito ? "Estoy subscrito" : "No estoy subscrito",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),    
        ],
      ),
    );
  }
}


