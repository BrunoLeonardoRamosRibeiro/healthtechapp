import 'package:flutter/material.dart';

class CardButtonMenuWidget extends StatelessWidget {
  String text;
  IconData icon;
  Function onPressed;

  CardButtonMenuWidget({this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/PerfilDeSaude2.png',
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              child: Text(
                text ?? "Informe o Texto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      onPressed: onPressed ?? null,
    );
  }
}
