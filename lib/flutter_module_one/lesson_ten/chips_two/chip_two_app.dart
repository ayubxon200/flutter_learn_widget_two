import 'package:flutter/material.dart';

class ChipTwoApp extends StatelessWidget {
  const ChipTwoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          elevation: 10,
          shadowColor: Colors.black,
          label: Text("Chip Raised"),
        ),
      ),
    );
  }
}
