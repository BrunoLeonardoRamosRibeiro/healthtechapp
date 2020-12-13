import 'package:flutter/material.dart';

class ButtonPrimaryWidget extends StatelessWidget {
  String text;
  IconData icon;
  Function action;
  double width;

  ButtonPrimaryWidget({this.text, this.icon, this.action, this.width});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blueAccent,
      onPressed: action,
      child: Container(
        width: width?? 80,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: 16),),
            Icon(icon, color: Colors.white,),
          ],
        ),
      ),

    );
  }
}
