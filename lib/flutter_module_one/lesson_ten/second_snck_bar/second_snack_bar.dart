import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/second_snck_bar/helper/secondSnackBarListTile.dart';

class SecondSnackBarApp extends StatefulWidget {
  const SecondSnackBarApp({super.key});

  @override
  State<SecondSnackBarApp> createState() => _SecondSnackBarAppState();
}

class _SecondSnackBarAppState extends State<SecondSnackBarApp> {
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
                  title: "An Informational toast",
                  icon: Icons.add,
                  containerBackgroundColor: Colors.blue,
                ),
              ),
            );
          },
          child: Text("Show Second Snack Bar"),
        ),
      ),
    );
  }
}
