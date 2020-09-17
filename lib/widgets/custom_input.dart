import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintTexto;
  final IconData icono;
  final TextInputType keboard;
  final TextEditingController controller;
  final bool isPassword;

  CustomInput(
      {@required this.hintTexto,
      @required this.icono,
      this.keboard = TextInputType.text,
      this.controller,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0, 5),
                  blurRadius: 5)
            ]),
        child: TextField(
          controller: controller,
          autocorrect: false,
          keyboardType: keboard,
          obscureText: this.isPassword,
          decoration: InputDecoration(
              prefixIcon: Icon(icono),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: hintTexto),
        ));
  }
}
