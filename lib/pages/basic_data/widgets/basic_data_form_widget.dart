import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/input_primary_widget.dart';
class BasicDataFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(height: 20),
          InputPrimaryWidget(text: "Tipo Sanguineo", ),
          InputPrimaryWidget(text: "Idade", ),
          InputPrimaryWidget(text: "Altura", ),
          InputPrimaryWidget(text: "Peso"),
          InputPrimaryWidget(text: "Sexo"),
          InputPrimaryWidget(text: "Estado Civil"),
          Spacer(),
          ButtonPrimaryWidget(
            text: 'Cadastrar',
            width: 105,
            icon: Icons.check,
            action: () {
              //Get.to(BasicDataPage());
            },
          ),
        ],
      ),
    );
  }
}
