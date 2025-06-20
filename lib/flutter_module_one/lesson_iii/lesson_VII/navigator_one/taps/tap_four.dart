import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/lesson_VII/navigator_one/taps/tap_five.dart';

class TapFour extends StatelessWidget {
  const TapFour({super.key});

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
                "Welcome",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 70),
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return TapFive();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    backgroundColor: Colors.green,
                  ),
                  child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.white),),
                ),

                SizedBox(height: 20,),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return TapFive();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    backgroundColor: Colors.black,
                  ),
                  child: Text("Register", style: TextStyle(fontSize: 25, color: Colors.white),),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
