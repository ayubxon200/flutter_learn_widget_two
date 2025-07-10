import 'package:flutter/material.dart';

class ChipSevenApp extends StatelessWidget {
  const ChipSevenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          elevation: 10,
          shadowColor: Colors.black,
          avatar: Icon(Icons.document_scanner, size: 20, color: Colors.greenAccent,),
          label: Text("Left Icon"),
        ),
      ),
    );
  }
}
