import 'package:flutter/material.dart';

class ChipSeventeenApp extends StatelessWidget {
  const ChipSeventeenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          elevation: 10,
          shadowColor: Colors.black,
          label: Text("Deletable"),
          onDeleted: () {},
          deleteIcon: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.close, color: Colors.white, size: 15,),
          ),
        ),
      ),
    );
  }
}
