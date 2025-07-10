import 'package:flutter/material.dart';

class ChipEighteen extends StatelessWidget {
  const ChipEighteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.blue,
          label: Text("OnHover", style: TextStyle(color: Colors.white),),
          onDeleted: () {},
          deleteIcon: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.close, size: 15,),
          ),
        ),
      ),
    );
  }
}
