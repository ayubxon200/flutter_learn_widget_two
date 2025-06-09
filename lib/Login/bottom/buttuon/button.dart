import 'package:flutter/material.dart';
import 'package:flutter_learn/Login/bottom/Text/text.dart';

class ButtonApp extends StatelessWidget {
  final Color backgroundColor;
  final double horizontal;
  final TextApp text;
  const ButtonApp({required this.backgroundColor, this.horizontal = 90, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: horizontal),
      ),
      child: TextApp(text: text.text, color: text.color),
    );
  }
}
