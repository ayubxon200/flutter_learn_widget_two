import 'package:flutter/material.dart';

class ChipsOneApp extends StatelessWidget {
  const ChipsOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          side: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          label: Text("Chip Outline"),
        ),
      ),
    );
  }
}
