import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/Login/top/top_greenContainer.dart';

import 'bottom/bottom_white_Container.dart';

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
