import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/navigator_one/taps/tap_seven.dart';

class TapSix extends StatefulWidget {
  final String userName;
  const TapSix({required this.userName, super.key});

  @override
  State<TapSix> createState() => _TapSixState();
}

class _TapSixState extends State<TapSix> {

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.userName;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),

            // TextField
            Container(
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return TapSeven();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.black,
              ),
              child: Text("Register", style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
