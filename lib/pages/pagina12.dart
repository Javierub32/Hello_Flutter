import 'dart:math';

import 'package:flutter/material.dart';

class Pagina12_CuadradoEsquizofrenico extends StatefulWidget {
  const Pagina12_CuadradoEsquizofrenico({super.key});

  @override
  State<Pagina12_CuadradoEsquizofrenico> createState() =>
      _Pagina12_CuadradoEsquizofrenicoState();
}

class _Pagina12_CuadradoEsquizofrenicoState
    extends State<Pagina12_CuadradoEsquizofrenico> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20.0);

  void _cambiarContainer() {
    final random = Random();

    setState(() {
      _width = random.nextDouble() * 300;
      _height = random.nextDouble() * 300;
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0);
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: ElevatedButton(
            onPressed: () {
              _cambiarContainer();
            },
            child: Text("Cambiar container"),
          ),
        ),
      ],
    );
  }
}
