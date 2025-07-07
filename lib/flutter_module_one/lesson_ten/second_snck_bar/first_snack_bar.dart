import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/second_snck_bar/helper/secondSnackBarListTile.dart';

class FirstSnackBarApp extends StatefulWidget {
  const FirstSnackBarApp({super.key});

  @override
  State<FirstSnackBarApp> createState() => _FirstSnackBarAppState();
}

class _FirstSnackBarAppState extends State<FirstSnackBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.lightBlueAccent,
                content: SecondSnackBarListTile(title: "A successful toast", icon: Icons.check, containerBackgroundColor: Colors.green  ),
              ),
            );
          },
          child: Text("Show First Snack Bar"),
        ),
      ),
    );
  }
}
