import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String mensaje;
  final String accion;

  const Labels({this.ruta, this.mensaje, this.accion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(mensaje,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, ruta),
          child: Text(
            accion,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
