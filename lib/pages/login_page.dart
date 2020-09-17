import 'package:app_chat/widgets/custom_button.dart';
import 'package:app_chat/widgets/custom_input.dart';
import 'package:app_chat/widgets/labels.dart';
import 'package:app_chat/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    titulo: "Messanger",
                  ),
                  _Forms(),
                  Labels(
                    ruta: 'register',
                    mensaje: 'No tienes una cuenta?',
                    accion: 'Crea una ahora!!!',
                  ),
                  _Condiciones()
                ],
              ),
            ),
          ),
        ));
  }
}

class _Forms extends StatefulWidget {
  @override
  __FormsState createState() => __FormsState();
}

class __FormsState extends State<_Forms> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            hintTexto: 'Email address',
            icono: Icons.mail_outline,
            keboard: TextInputType.emailAddress,
            controller: emailCtrl,
          ),
          CustomInput(
            hintTexto: 'Password',
            icono: Icons.panorama,
            controller: passCtrl,
            isPassword: true,
          ),
          CustomButton(
            onPress: () {
              print(emailCtrl.text);
            },
            texto: 'Log In!!!',
          )
        ],
      ),
    );
  }
}

class _Condiciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        'Términos y condiciones de uso',
        style: TextStyle(
            color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w300),
      ),
    );
  }
}
