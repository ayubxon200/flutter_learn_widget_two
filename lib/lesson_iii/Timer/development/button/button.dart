import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const ButtonApp({required this.icon, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon, size: 40,),);
  }
}
