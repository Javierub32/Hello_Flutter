import 'package:flutter/material.dart';

class Pagina15_PasarDatosAWidget extends StatelessWidget {
  const Pagina15_PasarDatosAWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //! Necesitamos un TextEditingController para poder obtener el texto del TextField
    TextEditingController _controller = TextEditingController(text: "");

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              //border: InputBorder.none,   //Quita el borde inferior
              fillColor: Colors.grey[200],
              filled: true,
              hintText: "Ingrese la info a pasar al widget",
            ),
          ),
        ),

        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Pagina15_StatelessWidget(_controller.text),
              ),
            );
          },
          child: const Text("Enviar a StatelessWidget"),
        ),
        
        SizedBox(height: 10),

        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Pagina15_StatefulWidged(_controller.text),
              ),
            );
          },
          child: const Text("Enviar a StatefulWidget"),
        ),
      ],
    );
  }
}

//Hacemos el stateless widget:
class Pagina15_StatelessWidget extends StatelessWidget {
  final String texto;
  const Pagina15_StatelessWidget(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("StatelessWidget", textAlign: TextAlign.start),
          backgroundColor: const Color(0x2F0084FF)),
      body: Center(
        child: Text(texto), //* En un StatelessWidget no se usa widget.texto, se usa la variable directamente
      ),
    );
  }
}

//Hacemos el stateful widget:
class Pagina15_StatefulWidged extends StatefulWidget {
  final String texto;
  const Pagina15_StatefulWidged(this.texto,{super.key});

  @override
  State<Pagina15_StatefulWidged> createState() =>
      _Pagina15_StatefulWidgedState();
}

class _Pagina15_StatefulWidgedState extends State<Pagina15_StatefulWidged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("StatefulWidget", textAlign: TextAlign.start),
          backgroundColor: const Color(0x2F0084FF)),
      body: Center(
        child: Text(widget.texto), //* En un StatefulWidget se usa widget.texto
      ),
    );
  }
}
