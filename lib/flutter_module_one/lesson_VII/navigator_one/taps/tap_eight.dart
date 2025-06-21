import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/navigator_one/taps/tap_nine.dart';

class TapEight extends StatefulWidget {
  final String passwordOne;
  final String passwordTwo;
  const TapEight({required this.passwordOne, required this.passwordTwo, super.key});

  @override
  State<TapEight> createState() => _TapEightState();
}

class _TapEightState extends State<TapEight> {

  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerOne.text = widget.passwordOne;
    _controllerTwo.text = widget.passwordTwo;
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
            Spacer(),
            Text(
              "Password",
              style: TextStyle(fontSize: 20, color: Colors.white),
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

            Spacer(),
            SafeArea(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return TapNine();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  backgroundColor: Colors.green,
                ),
                child: Text("Done", style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}