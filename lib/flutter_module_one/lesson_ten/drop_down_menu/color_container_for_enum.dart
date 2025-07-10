import 'package:flutter/material.dart';

class ColorContainerForEnum extends StatelessWidget {
  final Color color;
  const ColorContainerForEnum({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: CircleAvatar(
        backgroundColor: color,
      ),
    );
  }
}
