import 'package:flutter/material.dart';

class ChipOne extends StatelessWidget {
  const ChipOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Icon(Icons.pedal_bike_outlined, color: Colors.blue,),
          label: Text("Input"),

          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          backgroundColor: Colors.grey.shade300,
          onDeleted: () {},
        ),
      ),
    );
  }
}
