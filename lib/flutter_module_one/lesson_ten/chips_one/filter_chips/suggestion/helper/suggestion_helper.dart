import 'package:flutter/material.dart';

class SuggestionHelper extends StatelessWidget {
  final String title;

  const SuggestionHelper({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
      labelPadding: EdgeInsets.all(8),
    );
  }
}
