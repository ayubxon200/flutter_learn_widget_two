import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/navigator_one/taps/tap_eight.dart';

class TapSeven extends StatefulWidget {
  const TapSeven({super.key});

  @override
  State<TapSeven> createState() => _TapSevenState();
}

class _TapSevenState extends State<TapSeven> {

  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controllerOne.dispose();
    _controllerTwo.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return TapEight(passwordOne: _controllerOne.text, passwordTwo: _controllerTwo.text);
                }));
              },
              child: Text(
                "Password",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              child: TextField(
                controller: _controllerOne,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 16),
                obscureText: true,
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              child: TextField(
                controller: _controllerTwo,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 16),
                obscureText: true,
              ),
            ),

            SizedBox(height: 150,),

            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return TapEight(passwordOne: _controllerOne.text, passwordTwo: _controllerTwo.text);
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.black,
                  ),
                  child: Text("Next", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
            ),
          ],
        ),
      ),
    );
  }
}