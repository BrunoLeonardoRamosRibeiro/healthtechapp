import 'package:flutter/material.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('Login'),
          Text('Senha'),
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
          )
        ],
      ),
    );
  }
}
