import 'package:flutter/material.dart';

import 'helper/secondSnackBarListTile.dart';

class ThirdSnackBarApp extends StatefulWidget {
  const ThirdSnackBarApp({super.key});

  @override
  State<ThirdSnackBarApp> createState() => _ThirdSnackBarAppState();
}

class _ThirdSnackBarAppState extends State<ThirdSnackBarApp> {
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
                  title: "A warning toast",
                  icon: Icons.warning_amber,
                  containerBackgroundColor: Colors.orangeAccent,
                ),
              ),
            );
          },
          child: Text("Show Third Snack Bar"),
        ),
      ),
    );
  }
}
