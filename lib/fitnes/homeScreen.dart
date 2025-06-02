import 'package:flutter/material.dart';
import 'package:flutter_learn/fitnes/components/buttons/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Fitness", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),),
                        Text("X", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600, color: Colors.deepPurple)),
                      ],
                    ),
                    Text("Everybody Can Train", style: TextStyle(fontSize: 30, color: Colors.grey, fontWeight: FontWeight.w400),),
                  ],
                )
            ),

            SafeArea(
              child: Button(),
            ),
          ],
        ),
      ),
    );
  }
}