import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/first_snack_bar/helper/snackBarListTile.dart';

class SecondSnackBar extends StatefulWidget {
  const SecondSnackBar({super.key});

  @override
  State<SecondSnackBar> createState() => _SecondSnackBarState();
}

class _SecondSnackBarState extends State<SecondSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.purpleAccent,
                content: SnackBarListTile(
                  isSelected: false,
                  title: "Your bank account was rejected",
                  subTitle:
                      "The bank couldn't approve your request even after the appeal",
                ),
              ),
            );
          },
          child: Text("Show Snack bar"),
        ),
      ),
    );
  }
}
