import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthtechapp/pages/register/register_page.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/input_primary_widget.dart';

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 20),
          InputPrimaryWidget(text: "Usuário" ,),
          InputPrimaryWidget(text: "Senha", obscureText: true,),
          Spacer(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonPrimaryWidget(
                  text: 'Entrar',
                  icon: Icons.check,
                  action: () {
                    // TODO: Botão Entrar
                  },
                ),
                ButtonPrimaryWidget(
                  text: 'Criar conta',
                  width: 104,
                  icon: Icons.add,
                  action: () {
                    // TODO: Botão Entrar
                  },
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Get.to(RegisterPage());
            },
            child: Text(
              'Esqueceu a senha?',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
