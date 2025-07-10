import 'package:flutter/material.dart';

class ChipSix extends StatelessWidget {
  const ChipSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Icon(Icons.pedal_bike_outlined,),
          label: Text("Disable"),

          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          backgroundColor: Colors.grey.shade300,
          autofocus: true,
          onDeleted: () {},
        ),
      ),
    );
  }
}
