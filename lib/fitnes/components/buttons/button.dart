import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        backgroundColor: Colors.deepPurple,
      ),
      child: Text("Get Started", style: TextStyle(fontSize: 20, color: Colors.white),),
    );
  }
}
