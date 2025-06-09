import 'package:flutter/material.dart';
import 'HomeScreen/homeScreen.dart';

class TaskOne extends StatelessWidget {
  const TaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}