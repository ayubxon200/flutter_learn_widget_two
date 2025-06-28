import 'package:flutter/material.dart';


class ContrastColorBox extends StatelessWidget {
  final Color color;
  final String colorRgbFormat;

  const ContrastColorBox({
    required this.color,
    required this.colorRgbFormat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7, right: 5),
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(backgroundColor: color, minRadius: 10, maxRadius: 15),
          SizedBox(width: 5),
          Text(
            colorRgbFormat,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
