import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthtechapp/pages/login/widgets/login_form_widget.dart';
import 'package:healthtechapp/pages/login/widgets/logotipo_login_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              LogotipoLoginWidget(),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                width: 200,
                child: Center(
                  child: Text(
                    'Cuide da sua saúde de forma eficiente.',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, ),
                child: LoginFormWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
