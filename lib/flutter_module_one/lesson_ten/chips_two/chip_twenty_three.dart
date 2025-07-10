import 'package:flutter/material.dart';

class ChipTwentyThree extends StatelessWidget {
  const ChipTwentyThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          backgroundColor: Colors.blue.shade300,
          avatar: CircleAvatar(
            backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
            radius: 20,
          ),
          label: Text("john Doe", style: TextStyle(fontSize: 15, color: Colors.white),),
        ),
      ),
    );
  }
}
