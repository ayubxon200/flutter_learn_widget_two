import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  final String text;
  final bool obscureText;
  const TextFieldApp({required this.text, this.obscureText = false, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        border: InputBorder.none,
      ),
      obscureText: obscureText,
    );
  }
}
