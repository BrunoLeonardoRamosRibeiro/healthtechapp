import 'package:flutter/material.dart';
import 'package:healthtechapp/pages/basic_data/widgets/basic_data_form_widget.dart';

class BasicDataPage extends StatelessWidget {
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
                    'Informe os dados básicos',
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
                child: BasicDataFormWidget(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
