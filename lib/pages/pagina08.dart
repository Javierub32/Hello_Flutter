import "package:flutter/material.dart";

class Pagina08_UsoDeClases extends StatefulWidget {
  const Pagina08_UsoDeClases({super.key});

  @override
  State<Pagina08_UsoDeClases> createState() => _Pagina08_UsoDeClasesState();
}

class _Pagina08_UsoDeClasesState extends State<Pagina08_UsoDeClases> {
  Empresa _empresa = new Empresa("Google", "Aguachirri", 2000);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _empresa._precio.toString(),
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class Empresa {
  String _nombre;
  String _dueno;
  int _precio;

  Empresa(this._nombre, this._dueno, this._precio);


  // Getter para _nombre
  String get nombre => _nombre;

  // Setter para _nombre
  set nombre(String nombre) {
    _nombre = nombre;
  }

  // Getter para _dueno
  String get dueno => _dueno;

  // Setter para _dueno
  set dueno(String dueno) {
    _dueno = dueno;
  }

  // Getter para _precio
  int get precio => _precio;

  // Setter para _precio
  set precio(int precio) {
    if (precio >= 0) { // Validación simple
      _precio = precio;
    }
  }
}