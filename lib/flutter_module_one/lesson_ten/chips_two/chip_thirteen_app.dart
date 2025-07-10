import 'package:flutter/material.dart';

class ChipThirteenApp extends StatelessWidget {
  const ChipThirteenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.blue.shade100,
          label: Text("Selected", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.blue),),
          deleteIcon: Icon(Icons.check, size: 20, color: Colors.blue,),
          onDeleted: () {},
        ),
      ),
    );
  }
}
