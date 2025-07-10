import 'package:flutter/material.dart';

class ChipFourApp extends StatelessWidget {
  const ChipFourApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: Colors.pink,
            width: 2,
          ),
          label: Text("Chip Impact"),
        ),
      ),
    );
  }
}
