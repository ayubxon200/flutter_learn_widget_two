import 'package:flutter/material.dart';
import 'package:flutter_learn/Login/bottom/bottom_white_Container.dart';
import 'package:flutter_learn/Login/top/top_greenContainer.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                TopGreenContainer(),

                BottomWhiteContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
