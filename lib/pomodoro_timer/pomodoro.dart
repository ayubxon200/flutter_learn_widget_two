import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_learn/pomodoro_timer/color.dart';

MaterialAccentColor cyanAccent = AppColor.cyanAccent;
MaterialAccentColor color = AppColor.purpleAccent;


class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  int tick = 5;
  Timer? timer;
  bool isRunning = false;

  void startTimer() {
    isRunning = true;
    setState(() {
      color = AppColor.cyanAccent;
      cyanAccent = Colors.orangeAccent;
    });

    timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (tick > 0) {
        setState(() {
          tick--;
        });
      } else {
        t.cancel();
        setState(() {
          color = AppColor.purpleAccent;
          cyanAccent = AppColor.cyanAccent;
          isRunning = false;
        });
      }
    });
  }

  void resetTimer() {
    setState(() {
      tick = 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: color,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Pomodoro timer",
                      style: TextStyle(color: AppColor.white, fontSize: 50),
                    )),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Start to work",
                  style: TextStyle(color: AppColor.white, fontSize: 35),
                ),
              ),
              Container(
                color: cyanAccent,
                margin: EdgeInsets.only(
                    top: 30, right: 10, left: 10, bottom: 30),
                height: 100,
                child: Center(
                  child: Text(
                    "00:0$tick",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  if (isRunning) return; // Ishlayotgan bo‘lsa, qayta bosilmasin
                  if (tick == 0) {
                    resetTimer();
                  } else {
                    startTimer();
                  }
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(
                      right: 80, left: 80, top: 15, bottom: 15),
                  backgroundColor: cyanAccent,
                ),
                child: Text(
                  tick == 0 ? "Reset" : "Start work",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
