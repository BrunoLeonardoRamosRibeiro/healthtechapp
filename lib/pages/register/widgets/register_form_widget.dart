import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthtechapp/pages/login/login_page.dart';
import 'package:healthtechapp/pages/shared/widgets/button_border_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/input_primary_widget.dart';

class RegisterFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 20),
          InputPrimaryWidget(
            text: "Nome",
          ),
          InputPrimaryWidget(
            text: "Sobrenome",
          ),
          InputPrimaryWidget(
            text: "Usuário",
          ),
          InputPrimaryWidget(
            text: "E-mail",
          ),
          InputPrimaryWidget(
            text: "Senha",
            obscureText: true,
          ),
          InputPrimaryWidget(
            text: "Confirmar Senha",
            obscureText: true,
          ),
          SizedBox(
            height: 16,
          ),
          ButtonBorderWidget(
            text: "Confirmar Cadastro",
            border: 2,
            borderColor: Colors.blue[200],
            colorButton: Colors.blueAccent,
            onPressed: () {
              Get.to(LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
