import 'package:flutter/material.dart';

class ChipFour extends StatelessWidget {
  const ChipFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Icon(Icons.palette, color: Colors.blue,),
          label: Text("Chip"),

          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          backgroundColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
