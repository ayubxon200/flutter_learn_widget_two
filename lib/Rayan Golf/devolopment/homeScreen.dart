import 'package:flutter/material.dart';

double fontSize = 17;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Kotta R qism
        Container(
          width: width,
          height: height / 2,
          color: Colors.deepOrangeAccent,
          child: Text("R .", style: TextStyle(fontSize: (height / 2) - 50)),
        ),

        Container(
          color: Colors.black,
          height: height / 2,

          child: Container(
            margin: EdgeInsets.only(left: 15, bottom: 7, right: 10, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // rayan golf haqida allambalo yozuvlar
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Rayan Golf is a film director and photographer whose work covers two decades of documenting music art fashion, and celebrity",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                    textDirection: TextDirection.ltr,
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: SafeArea(
                    child: Column(
                      children: [
                        Text(
                          "Studio",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          "Rayangolf@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          "(+351) 372 77 83",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Social",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          "Instagram",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
