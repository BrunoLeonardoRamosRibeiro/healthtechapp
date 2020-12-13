import 'package:flutter/material.dart';

class ButtonBorderWidget extends StatelessWidget {
  String text;
  double border;
  Color borderColor;
  Color colorButton;
  Function onPressed;

  ButtonBorderWidget(
      {this.text,
      this.border = 0,
      this.onPressed = null,
      this.colorButton,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      color: colorButton,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: borderColor,
        ),
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
      onPressed: () {
        // todo
      },
    );
  }
}
