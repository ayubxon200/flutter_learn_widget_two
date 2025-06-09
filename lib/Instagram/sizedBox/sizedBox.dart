import 'package:flutter/material.dart';

class SizedBoxApp extends StatelessWidget {
  final double height;
  final double width;
  const SizedBoxApp({this.height = 0, this.width = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
