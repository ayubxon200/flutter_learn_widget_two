import 'package:flutter/material.dart';

import 'helper/snackBarListTile.dart';

class FirstSnackBar extends StatefulWidget {
  const FirstSnackBar({super.key});

  @override
  State<FirstSnackBar> createState() => _FirstSnackBarState();
}

class _FirstSnackBarState extends State<FirstSnackBar> {
  bool? isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.greenAccent,
                padding: EdgeInsets.all(10),
                content: SnackBarListTile(
                  isSelected: true,
                  title: "Your account is ready to be activity",
                  subTitle:
                      "Congratulations, your account is approved and ready to be activated",
                ),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: Text("Show snack bar"),
        ),
      ),
    );
  }
}