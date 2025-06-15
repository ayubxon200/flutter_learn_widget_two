import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;

  const TextTitle({
    required this.text,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.transparent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: Colors.grey,
            width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Text(text, style: TextStyle(color: textColor),),
      ),
    );
  }
}
