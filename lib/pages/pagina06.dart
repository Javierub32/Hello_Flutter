import "package:flutter/material.dart";

//* Este Widget cambia de página
Widget pagina_06(context){ //! Hay que pasar el context para poder hacer el push
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text("Home"),
        ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Pagina06()));
          },
          child: const Text("Cambiar de pestaña")
          ),
      ],
    ),
  );
}

class Pagina06 extends StatelessWidget {
  const Pagina06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terminos y Condiciones"),
          backgroundColor: const Color(0x2F0084FF), // Cambiar el color de fondo aquí
      ),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Acepta los términos y condiciones para seguir usando la app:", 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),    
            ),

            SizedBox(height: 7),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(150, 50),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Acepto todo"),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}