import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/lesson_VII/navigator_one/taps/twelve.dart';

class TapEleven extends StatelessWidget {
  const TapEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "We sent you a link.",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text("Resent", style: TextStyle(fontSize: 30, color: Colors.white)),

            Spacer(),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return TapTwelve();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  ),
                  child: Text(
                    "Go to Email",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
