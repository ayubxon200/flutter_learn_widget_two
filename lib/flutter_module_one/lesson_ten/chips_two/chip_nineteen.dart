import 'package:flutter/material.dart';

class ChipNineteenApp extends StatelessWidget {
  const ChipNineteenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          side: BorderSide(
            color: Colors.pink,
            width: 2,
          ),
          label: Text("Deletable"),
          onDeleted: () {},
        ),
      ),
    );
  }
}
