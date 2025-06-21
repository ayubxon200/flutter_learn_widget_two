import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  final String assetsUrl;

  const ImageApp({required this.assetsUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image(image: AssetImage(assetsUrl), width: 100, height: 100),
    );
  }
}