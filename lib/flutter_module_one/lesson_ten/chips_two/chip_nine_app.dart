import 'package:flutter/material.dart';

class ChipNineApp extends StatelessWidget {
  const ChipNineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: Colors.pink,
            width: 2,
          ),
          avatar: Icon(Icons.document_scanner,),
          label: Text("Left Icon"),
        ),
      ),
    );
  }
}
