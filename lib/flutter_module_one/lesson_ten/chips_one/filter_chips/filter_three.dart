import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/chips_one/filter_chips/helper/filter_helper.dart';

class FilterThree extends StatelessWidget {
  const FilterThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilterHelper(title: "Filter 3", icon: Icon(Icons.check), color: Colors.grey.shade300,),
      ),
    );
  }
}
