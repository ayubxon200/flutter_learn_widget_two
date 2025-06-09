
import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: AssetImage('assets/images/image_for_task_one.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
