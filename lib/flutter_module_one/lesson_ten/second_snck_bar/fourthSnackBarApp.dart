import 'package:flutter/material.dart';

import 'helper/secondSnackBarListTile.dart';

class FourthSnackBarApp extends StatefulWidget {
  const FourthSnackBarApp({super.key});

  @override
  State<FourthSnackBarApp> createState() => _FourthSnackBarAppState();
}

class _FourthSnackBarAppState extends State<FourthSnackBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.lightBlue,
                behavior: SnackBarBehavior.floating,
                content: SecondSnackBarListTile(
                  title: "A destructive toast",
                  icon: Icons.warning_amber,
                  containerBackgroundColor: Colors.amber,
                ),
              ),
            );
          },
          child: Text("Show Fourth Snack Bar"),
        ),
      ),
    );
  }
}
