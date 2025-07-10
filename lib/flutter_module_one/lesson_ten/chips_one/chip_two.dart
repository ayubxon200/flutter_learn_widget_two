import 'package:flutter/material.dart';

class ChipTwo extends StatelessWidget {
  const ChipTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          label: Text("Choice"),

          backgroundColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
