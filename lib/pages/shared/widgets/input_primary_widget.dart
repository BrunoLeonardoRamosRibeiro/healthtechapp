import 'package:flutter/material.dart';

class InputPrimaryWidget extends StatelessWidget {
  String text;
  String initialValue;
  bool obscureText;
  bool enabled;
  Function onChanged;
  Function validator;

  InputPrimaryWidget({this.text, this.obscureText, this.enabled, this.onChanged,
      this.validator, this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(left: 20, top: 5, right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        initialValue: initialValue?? "",
        validator: validator ?? null,
        obscureText: obscureText ?? false,
        onChanged: onChanged ?? null,
        enabled: enabled ?? true,
        decoration: InputDecoration(
          hintText: text ?? "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
