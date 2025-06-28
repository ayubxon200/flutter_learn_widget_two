import 'package:flutter/material.dart';

import '../contrast_page_one.dart';

class ContrastButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;

  const ContrastButton({required this.title, required this.color, required this.textColor, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ContrastPageOne();
            }));
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
            backgroundColor: color,
          ),
          child: Text(title, style: TextStyle(fontSize: 20, color: textColor)),
        ),
      ),
    );
  }
}
