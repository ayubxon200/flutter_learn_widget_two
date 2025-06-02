import 'package:flutter/material.dart';
import 'package:flutter_learn/tic_tac_toe/colors.dart';

class Sized extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const Sized({required this.onTap, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width / 3.20,
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.white,
            width: 2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: AppColor.white),
        ),
      ),
    );
  }
}
