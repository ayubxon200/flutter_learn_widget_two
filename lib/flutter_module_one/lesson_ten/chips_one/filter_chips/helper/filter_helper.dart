import 'package:flutter/material.dart';

class FilterHelper extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color color;
  const FilterHelper({required this.title, required this.icon, this.color = Colors.white, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
      avatar: icon,

      backgroundColor: color,
    );
  }
}
