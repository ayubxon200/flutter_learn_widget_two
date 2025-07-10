import 'package:flutter/material.dart';

class ChipTwentyOne extends StatelessWidget {
  const ChipTwentyOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: CircleAvatar(
            backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
            radius: 20,
          ),
          label: Text("john Doe", style: TextStyle(fontSize: 15),),
        ),
      ),
    );
  }
}
