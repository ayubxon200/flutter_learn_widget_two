import 'package:flutter/material.dart';
import 'package:flutter_learn/Calendar/bottom/bottom.dart';
import 'package:flutter_learn/Calendar/color.dart';

import 'Text_Top_Calendar_Number/Calendar_Number_And_Text/calendarNumberAndText.dart';

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  final white = CalendarColor.white;
  final grey = CalendarColor.grey;
  final black = CalendarColor.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          title: Column(
            children: [
              Text("Schedule", style: TextStyle(color: white, fontSize: 30),),
              SizedBox(height: 10,),
              Text("September 13,2025", style: TextStyle(color: grey, fontSize: 20),),
            ],
          ),
          toolbarHeight: 70,
          actions: [
            Icon(Icons.close, color: white,),
          ],
        ),

        body: Container(
          padding: EdgeInsets.only(top: 20, left: 20),
          color: black,
          child: Column(
            children: [
              Row(
                children: [
                  CalendarText(text: "Man"),

                  CalendarText(text: "Tue"),

                  CalendarText(text: "Wed"),

                  CalendarText(text: "Thu"),

                  CalendarText(text: "Fri"),

                  CalendarText(text: "Sat"),

                  CalendarText(text: "Sun"),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  CalendarNumber(text: "29", color: CalendarColor.grey,),

                  CalendarNumber(text: "30", color: CalendarColor.grey,),

                  CalendarNumber(text: "31"),

                  CalendarNumber(text: "1"),

                  CalendarNumber(text: "2"),

                  CalendarNumber(text: "3"),

                  ChooseNumber(text: "4"),
                ],
              ),

              Row(
                children: [
                  CalendarNumber(text: "5"),

                  CalendarNumber(text: "6"),

                  ChooseNumber(text: "7"),

                  CalendarNumber(text: "8"),

                  CalendarNumber(text: "9"),

                  ChooseNumber(text: "10"),

                  CalendarNumber(text: "11"),
                ],
              ),

              Row(
                children: [
                  CalendarNumber(text: "12"),

                  ChooseNumber(text: "13"),

                  CalendarNumber(text: "14"),

                  CalendarNumber(text: "15"),

                  ChooseNumber(text: "16", bgColor: CalendarColor.white, textColor: CalendarColor.black,),

                  CalendarNumber(text: "17"),

                  CalendarNumber(text: "18"),
                ],
              ),

              Row(
                children: [
                  CalendarNumber(text: "19", notChooseNumber: true,),

                  CalendarNumber(text: "20", notChooseNumber: true,),

                  CalendarNumber(text: "21", notChooseNumber: true,),

                  CalendarNumber(text: "22", notChooseNumber: true,),

                  CalendarNumber(text: "23", notChooseNumber: true,),

                  CalendarNumber(text: "24", notChooseNumber: true,),

                  CalendarNumber(text: "25", notChooseNumber: true,),
                ],
              ),

              Row(
                children: [
                  CalendarNumber(text: "26", notChooseNumber: true,),

                  CalendarNumber(text: "27", notChooseNumber: true,),

                  CalendarNumber(text: "28", notChooseNumber: true,),

                  CalendarNumber(text: "29", notChooseNumber: true,),

                  CalendarNumber(text: "30", notChooseNumber: true,),

                  CalendarNumber(text: "31", notChooseNumber: true,),

                  CalendarNumber(text: "1", notChooseNumber: true, color: CalendarColor.grey,),
                ],
              ),

              Row(
                children: [
                  CalendarNumber(text: "2", notChooseNumber: true, color: CalendarColor.grey,),

                  CalendarNumber(text: "3", notChooseNumber: true, color: CalendarColor.grey,),

                  CalendarNumber(text: "4", notChooseNumber: true, color: CalendarColor.grey,),

                  CalendarNumber(text: "5", notChooseNumber: true, color: CalendarColor.grey,),

                  CalendarNumber(text: "6", notChooseNumber: true, color: CalendarColor.grey,),

                  CalendarNumber(text: "7", notChooseNumber: true, color: CalendarColor.grey,),

                  CalendarNumber(text: "8", notChooseNumber: true, color: CalendarColor.grey,),
                ],
              ),

              SizedBox(height: 40,),

              Row(
                children: [
                  Bottom(),
                  
                  SizedBox(width: 20,),
                  
                  BottomText(text: "Watered"),
                ],
              ),

              SizedBox(height: 15,),

              Row(
                children: [
                  Bottom(bgColor: CalendarColor.white, color: CalendarColor.black,),

                  SizedBox(width: 20,),

                  BottomText(text: "Planned to water"),
                ],
              ),

              SizedBox(height: 25,),

              BottomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
