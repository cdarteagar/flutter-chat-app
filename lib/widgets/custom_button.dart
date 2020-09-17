import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPress;
  final String texto;

  const CustomButton({this.onPress, this.texto});

  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPress,
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      child: Container(
          width: double.infinity,
          height: 50,
          child: Center(
              child: Text(
            this.texto,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ))),
      shape: StadiumBorder(),
    );
  }
}
