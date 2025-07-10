import 'package:flutter/material.dart';

class FilterTwo extends StatelessWidget {
  const FilterTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(label: Text("Filter 2"),),
      ),
    );
  }
}
