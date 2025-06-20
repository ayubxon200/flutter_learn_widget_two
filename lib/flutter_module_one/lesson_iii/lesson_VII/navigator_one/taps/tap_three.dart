import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/lesson_VII/navigator_one/taps/tap_four.dart';

class TapThree extends StatelessWidget {
  const TapThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Access benefits",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 70),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return TapFour();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                backgroundColor: Colors.green,
              ),
              child: Text("Next", style: TextStyle(fontSize: 25, color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
