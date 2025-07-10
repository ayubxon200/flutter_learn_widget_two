import 'package:flutter/material.dart';

class ChipSixteenApp extends StatelessWidget {
  const ChipSixteenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          label: Text("Deletable"),
          onDeleted: () {},
        ),
      ),
    );
  }
}
