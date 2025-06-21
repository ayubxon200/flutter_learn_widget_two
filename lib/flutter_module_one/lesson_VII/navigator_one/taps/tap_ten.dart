import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/navigator_one/taps/eleven.dart';

class TapTen extends StatefulWidget {
  final String email;
  const TapTen({required this.email, super.key});

  @override
  State<TapTen> createState() => _TapTenState();
}

class _TapTenState extends State<TapTen> {

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller.text = widget.email;
    super.initState();
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text("Email", style: TextStyle(fontSize: 20, color: Colors.white),),

            SizedBox(height: 15,),

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
                controller: _controller,
                decoration: InputDecoration(border: InputBorder.none,),
                style: TextStyle(fontSize: 16),
              ),
            ),

            Spacer(),
            SafeArea(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return TapEleven();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40)
                ),
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
