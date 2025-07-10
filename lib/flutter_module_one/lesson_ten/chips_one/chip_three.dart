import 'package:flutter/material.dart';

class ChipThree extends StatelessWidget {
  const ChipThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Icon(Icons.check,),
          label: Text("Filter"),

          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          backgroundColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
