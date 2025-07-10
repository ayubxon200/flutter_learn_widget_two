import 'package:flutter/material.dart';

class ChipTwentyFour extends StatelessWidget {
  const ChipTwentyFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          side: BorderSide(
            color: Colors.pink,
            width: 2
          ),
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
