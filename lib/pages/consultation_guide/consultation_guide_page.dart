import 'package:flutter/material.dart';
import 'package:healthtechapp/pages/consultation_guide/widgets/consultation_guide_form_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';

class ConsultationGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 32.0, top: 16, right: 32, bottom: 0),
                  child: Text(
                    'Aqui preenchemos sua Guia de Consulta',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ConsultationGuideFormWidget(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
