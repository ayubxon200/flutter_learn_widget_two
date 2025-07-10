import 'package:flutter/material.dart';

class ChipTwentyTwo extends StatelessWidget {
  const ChipTwentyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          elevation: 10,
          shadowColor: Colors.black,
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
