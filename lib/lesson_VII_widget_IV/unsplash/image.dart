import 'package:flutter/material.dart';

class ImageUnsplash extends StatelessWidget {
  final AssetImage image;

  const ImageUnsplash({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(image: image, fit: BoxFit.cover),
    );
  }
}
