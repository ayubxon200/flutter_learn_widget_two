import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ChipTwentyFive extends StatelessWidget {
  const ChipTwentyFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DottedBorder(
          options: RoundedRectDottedBorderOptions(
            radius: Radius.circular(25),
            dashPattern: [4, 2],
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
          child: Chip(
            side: BorderSide(
              color: Colors.transparent,
            ),
            avatar: CircleAvatar(
              backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
              radius: 20,
            ),
            label: Text("john Doe", style: TextStyle(fontSize: 15),),
          ),
        ),
      ),
    );
  }
}
