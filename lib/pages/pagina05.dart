import "package:flutter/material.dart";

Widget pagina_05(){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://pbs.twimg.com/media/FFpoEZUWUAEaW-i.jpg"),
        //image: AssetImage("assets/images/franco.png"), //! Si pones las barras al revés, da error
        fit: BoxFit.cover,
      ),     
    ),

    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre_05(),
          campoUsuario_05(),
          campoContrasena_05(),
          const SizedBox(height: 10),
          botonEntrar_05(),
        ],
      ),
    ),
  );
}



Widget campoUsuario_05(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena_05(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget nombre_05(){
  return const Text("Log In", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold));
}

Widget botonEntrar_05(){
  return ElevatedButton(
    onPressed: (){

    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0), // Si no es mayor al tamaño mínimo, no hace na
      minimumSize: const Size(150, 40),
    ),
    
    child: const Text("Enter"),
    
  );
}