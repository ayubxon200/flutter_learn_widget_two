import 'package:flutter/material.dart';

class InputHelper extends StatelessWidget {
  final String title;
  const InputHelper({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
      deleteIcon: Icon(Icons.close),
      onDeleted: () {},
    );
  }
}
