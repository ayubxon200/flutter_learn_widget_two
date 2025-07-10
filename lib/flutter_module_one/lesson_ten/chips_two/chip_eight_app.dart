import 'package:flutter/material.dart';

class ChipEightApp extends StatelessWidget {
  const ChipEightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.blue.shade100,
          avatar: Icon(Icons.document_scanner, color: Colors.blue,),
          label: Text("Left Icon", style: TextStyle(color: Colors.blue),),
        ),
      ),
    );
  }
}
