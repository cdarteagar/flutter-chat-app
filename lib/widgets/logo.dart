import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;

  const Logo({this.titulo});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
        child: Container(
      padding: EdgeInsets.only(top: 20),
      width: size.width * 0.7,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              width: size.width * 0.4,
              height: size.height * 0.2,
              image: AssetImage('assets/tag-logo.png')),
          SizedBox(
            height: 10,
          ),
          Text(
            titulo,
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    ));
  }
}
