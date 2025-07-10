import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ChipTenApp extends StatelessWidget {
  const ChipTenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DottedBorder(
          options: RoundedRectDottedBorderOptions(
            radius: Radius.circular(25,),
            dashPattern: [4, 2],
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
          child: Chip(
            side: BorderSide(
              color: Colors.transparent,
            ),
            avatar: Icon(Icons.document_scanner, color: Colors.blue,),
            label: Text("Left Icon"),
          ),
        ),
      ),
    );
  }
}
