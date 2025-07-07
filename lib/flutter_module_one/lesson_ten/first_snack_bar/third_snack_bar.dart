import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/first_snack_bar/helper/snackBarListTile.dart';

class ThirdSnackBar extends StatefulWidget {
  const ThirdSnackBar({super.key});

  @override
  State<ThirdSnackBar> createState() => _ThirdSnackBarState();
}

class _ThirdSnackBarState extends State<ThirdSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.white,
                elevation: 10,
                content: SnackBarListTile(
                  isSelected: false,
                  title: "Your bank account was not approved",
                  subTitle:
                      "Your account was not approved, but don't worry send an appeal",
                ),
              ),
            );
          },
          child: Text("Show Snack Bar"),
        ),
      ),
    );
  }
}
