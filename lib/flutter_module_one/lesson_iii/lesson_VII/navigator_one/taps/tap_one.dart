import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/lesson_VII/navigator_one/taps/tap_two.dart';

class TapOne extends StatelessWidget {
  const TapOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Enjoy a seamless experience",
                style: TextStyle(fontSize: 35, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 70),
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return TapTwo();
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
