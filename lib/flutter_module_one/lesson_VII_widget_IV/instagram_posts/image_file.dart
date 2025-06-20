import 'package:flutter/material.dart';

class ImageFile extends StatelessWidget {
  final AssetImage image;

  const ImageFile({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image(image: image, fit: BoxFit.cover,),
    );
  }
}
