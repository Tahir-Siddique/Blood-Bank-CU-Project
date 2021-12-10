import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final FocusNode focusNode;
  final bool isPassword;
  final TextInputAction textInputAction;
  CustomInput(
      {this.hintText,
      this.onChanged,
      this.onSubmitted,
      this.focusNode,
      this.isPassword,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    bool _isPassword = isPassword ?? false;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: focusNode,
        obscureText: _isPassword,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        decoration: InputDecoration(
            hintText: hintText,
            fillColor: Colors.grey[200],
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
