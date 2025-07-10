import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/chips_one/input_chips/helper/input_helper.dart';

class InputTwo extends StatelessWidget {
  const InputTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InputHelper(title: "Filter 2"),
      ),
    );
  }
}
