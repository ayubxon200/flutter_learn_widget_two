import 'package:flutter/material.dart';

import 'image_app.dart';

final List<String> _listUrl = [
  "assets/images/moduleOneLessonEightImages/one.png",
  "assets/images/moduleOneLessonEightImages/two.jpg",
  "assets/images/moduleOneLessonEightImages/three.png",
  "assets/images/moduleOneLessonEightImages/four.png",
  "assets/images/moduleOneLessonEightImages/five.png",
];


class ContainerApp extends StatelessWidget {
  final int index;

  const ContainerApp({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 15),
      child: Row(
        children: [
          ImageApp(assetsUrl: _listUrl[index]),
          SizedBox(width: 20),
          Column(
            children: [
              Text("Vecteezy", style: TextStyle(fontSize: 25)),
              SizedBox(height: 5),
              Text("Vecteezy", style: TextStyle(fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }
}