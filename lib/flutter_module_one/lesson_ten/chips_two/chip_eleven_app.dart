import 'package:flutter/material.dart';

class ChipElevenApp extends StatelessWidget {
  const ChipElevenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          label: Text("Selected", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
          deleteIcon: Icon(Icons.check, size: 20,),
          onDeleted: () {},
        ),
      ),
    );
  }
}
