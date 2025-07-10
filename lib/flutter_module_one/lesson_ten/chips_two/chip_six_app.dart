import 'package:flutter/material.dart';

class ChipSixApp extends StatelessWidget {
  const ChipSixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Icon(Icons.document_scanner,),
          label: Text("Left Icon"),
        ),
      ),
    );
  }
}
