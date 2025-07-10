import 'package:flutter/material.dart';

class ChipFive extends StatelessWidget {
  const ChipFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Icon(Icons.pedal_bike_outlined, color: Colors.blue,),
          label: Text("Chip"),

          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          backgroundColor: Colors.grey.shade200,
          onDeleted: () {},
        ),
      ),
    );
  }
}
