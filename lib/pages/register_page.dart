import 'package:app_chat/widgets/custom_button.dart';
import 'package:app_chat/widgets/custom_input.dart';
import 'package:app_chat/widgets/labels.dart';
import 'package:app_chat/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    titulo: "Register Page",
                  ),
                  _Forms(),
                  Labels(
                    ruta: 'login',
                    mensaje: 'Ya esta registrado_',
                    accion: 'Volver a Login',
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
  final nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            hintTexto: 'Nombre',
            icono: Icons.perm_identity,
            keboard: TextInputType.emailAddress,
            controller: nameCtrl,
          ),
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
      child: Text(
        'Términos y condiciones de uso',
        style: TextStyle(
            color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w300),
      ),
    );
  }
}
