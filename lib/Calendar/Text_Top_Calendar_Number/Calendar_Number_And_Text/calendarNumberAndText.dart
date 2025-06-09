import 'package:flutter/material.dart';
import 'package:flutter_learn/Calendar/color.dart';

class CalendarText extends StatelessWidget {
  final String text;
  final Color color;
  const CalendarText({required this.text, this.color = CalendarColor.white, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(text, style: TextStyle(color: color, fontSize: 15),),
    );
  }
}

class CalendarNumber extends StatelessWidget {
  final String text;
  final Color color;
  final bool notChooseNumber;
  const CalendarNumber({required this.text, this.color = CalendarColor.white, this.notChooseNumber = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(

        margin: EdgeInsets.only(top: notChooseNumber ? 20 : 0),
          child: Text(text, style: TextStyle(color: color, fontSize: 20),),
      ),
    );
  }
}



class ChooseNumber extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  const ChooseNumber({required this.text, this.bgColor = Colors.green, this.textColor = CalendarColor.white, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 30),
      height: 60,
      width: 25,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(color: textColor, fontSize: 20), textAlign: TextAlign.center,),
          SizedBox(height: 4,),
            Icon(Icons.water_drop_outlined, size: 22, color: textColor, textDirection: TextDirection.rtl,),
        ],
      ),
    );
  }
}
