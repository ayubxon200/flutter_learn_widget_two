  import 'package:flutter/material.dart';
  import 'package:flutter_learn/flutter_module_one/lesson_VII/navigator_one/taps/tap_one.dart';
  
  class NavigatorOne extends StatefulWidget {
    const NavigatorOne({super.key});

  @override
  State<NavigatorOne> createState() => _NavigatorOneState();
}

class _NavigatorOneState extends State<NavigatorOne> {

    @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return TapOne();
      }));
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color?>(Colors.white),
            ),
          ),
        ),
      );
    }
}
