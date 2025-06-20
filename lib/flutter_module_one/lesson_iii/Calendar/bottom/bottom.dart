import 'package:flutter/material.dart';

import '../color.dart';

class Bottom extends StatelessWidget {
  final Color color;
  final Color bgColor;
  const Bottom({this.color = CalendarColor.white, this.bgColor = CalendarColor.green, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.water_drop_outlined, color: color, size: 40,),
      ),
    );
  }
}


class BottomText extends StatelessWidget {
  final String text;
  const BottomText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(color: CalendarColor.white, fontSize: 20),
    );
  }
}


class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        border: Border.all(
          color: CalendarColor.white,
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: CalendarColor.black,
          padding: EdgeInsets.symmetric(horizontal: 90),
        ),
        child: BottomText(text: "Schedule watering",),
      ),
    );
  }
}
