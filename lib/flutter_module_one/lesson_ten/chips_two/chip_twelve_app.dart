import 'package:flutter/material.dart';

class ChipTwelveApp extends StatelessWidget {
  const ChipTwelveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          elevation: 10,
          shadowColor: Colors.black,
          label: Text("Selected", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.green),),
          deleteIcon: Icon(Icons.check, size: 20,),
          onDeleted: () {},
        ),
      ),
    );
  }
}
