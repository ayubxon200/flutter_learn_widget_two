import 'package:flutter/material.dart';

class ChipThreeApp extends StatelessWidget {
  const ChipThreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.blue.shade100,
          label: Text("Chip Smooth", style: TextStyle(color: Colors.blue),),
        ),
      ),
    );
  }
}
