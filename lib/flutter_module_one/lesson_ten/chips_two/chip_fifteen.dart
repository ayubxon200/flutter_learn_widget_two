import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ChipFifteenApp extends StatelessWidget {
  const ChipFifteenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DottedBorder(
          options: RoundedRectDottedBorderOptions(
            radius: Radius.circular(25),
            dashPattern: [4, 2],
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
          child: Chip(
            side: BorderSide(
              color: Colors.transparent,
            ),
            label: Text(
              "Selected",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            deleteIcon: Icon(Icons.check, size: 20, color: Colors.blue),
            onDeleted: () {},
          ),
        ),
      ),
    );
  }
}
