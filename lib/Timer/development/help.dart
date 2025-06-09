import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const Button({required this.onPressed, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/*
   if (status == TimerState.initial) Button(onPressed: run, title: AppTexts.start),
   if (status == TimerState.inProgress) Button(onPressed: pause, title: AppTexts.pause),
   if (status == TimerState.pause) Button(onPressed: stop, title: AppTexts.stop),
   if (status == TimerState.pause) Button(onPressed: run, title: AppTexts.resume),
 */