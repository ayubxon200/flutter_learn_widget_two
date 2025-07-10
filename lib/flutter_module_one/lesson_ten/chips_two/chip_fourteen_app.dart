import 'package:flutter/material.dart';

class ChipFourteenApp extends StatelessWidget {
  const ChipFourteenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          side: BorderSide(
            color: Colors.pink,
            width: 2,
          ),
          label: Text("Selected", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.pink),),
          deleteIcon: Icon(Icons.check, size: 20,),
          onDeleted: () {},
        ),
      ),
    );
  }
}
