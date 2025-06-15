import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String text;
  final Color color;
  const TextApp({required this.text, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
