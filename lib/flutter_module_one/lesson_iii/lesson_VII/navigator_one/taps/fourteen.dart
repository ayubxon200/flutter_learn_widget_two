import 'package:flutter/material.dart';

class TapFourteen extends StatelessWidget {
  const TapFourteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Icon(
          Icons.home,
          color: Colors.white,
          size: 300,
        ),
      ),
    );
  }
}
