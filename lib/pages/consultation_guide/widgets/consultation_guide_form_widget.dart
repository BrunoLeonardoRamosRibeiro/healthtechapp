import 'package:flutter/material.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/input_primary_widget.dart';

class ConsultationGuideFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 20),
          InputPrimaryWidget(text: "Número da Carteira do SUS"),
          InputPrimaryWidget(text: "Nome Completo"),
          InputPrimaryWidget(text: "Plano"),
          InputPrimaryWidget(text: "Validade da Carteira"),
          Spacer(),
          ButtonPrimaryWidget(
            text: 'Atualizar Dados Principais',
            width: 220,
            icon: Icons.arrow_forward,
            action: () {
              //Get.to(RegisterPage());
            },
          ),
        ],
      ),
    );
  }
}
