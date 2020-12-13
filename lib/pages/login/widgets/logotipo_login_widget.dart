import 'package:flutter/material.dart';

class LogotipoLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Image.asset(
        'assets/images/HTECH2.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
