// ignore_for_file: unused_import
import 'package:crud_firebase/pages/firebasePages/pagina16_UsoDeFirebase_VerDatos.dart';
import 'package:crud_firebase/pages/firebasePages/pagina17_UsoDeFireBase_AnyadirDatos.dart';
import 'package:crud_firebase/pages/firebasePages/pagina18_UsoDeFirebase_ActualizarDatos.dart';
import "package:flutter/material.dart";

//Importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:crud_firebase/pages/pagina04.dart';
import 'package:crud_firebase/pages/pagina05.dart';
import 'package:crud_firebase/pages/pagina06.dart';
import 'package:crud_firebase/pages/pagina07.dart';
import 'package:crud_firebase/pages/pagina08.dart';
import 'package:crud_firebase/pages/pagina09.dart';
import 'package:crud_firebase/pages/pagina10.dart';
import 'package:crud_firebase/pages/pagina11.dart';
import 'package:crud_firebase/pages/pagina12.dart';
import 'package:crud_firebase/pages/pagina13.dart';
import 'package:crud_firebase/pages/pagina14.dart';






import 'package:crud_firebase/pages/pagina15.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi App",
      initialRoute: "/",
      routes: {
        "/": (context) => const pagina16_UsoDeFirebase_VerDatos(),
        "/add": (context) => const pagina17_UsoDeFireBase_AnyadirDatos(),
        "/edit": (context) => const pagina18_UsoDeFirebase_ActualizarDatos(),
      },
    );
  }
}

//! En esta clase, podemos probar todas las páginas que hemos creado hasta la 16 incluida
//! Para ello, solo tenemos que cambiar el widget que se muestra en la propiedad home de 
//! MaterialApp por Inicio y meter en el body del Inicio el widget que queramos probar
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  /*
  List<Widget> _paginas = <Widget>[
    Pagina11_PaginaHome(),
    Pagina11_PaginaUser(),
  ];
  int _selectedIndex = 0;
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage", textAlign: TextAlign.start),
        backgroundColor: const Color(0x2F0084FF), // Cambiar el color de fondo aquí
      ),
      body: pagina16_UsoDeFirebase_VerDatos(),



      /*
      bottomNavigationBar: BottomNavigationBar(
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      currentIndex: _selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: "User",
        ),
      ]
      ),
      */
    );
  }
}