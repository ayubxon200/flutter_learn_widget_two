import 'dart:async';
import 'package:flutter/material.dart';
import 'development/enum.dart';
import 'development/button/button.dart';



class TimerApp extends StatefulWidget {
  const TimerApp({super.key});

  @override
  State<TimerApp> createState() => _TimerAppState();
}


class _TimerAppState extends State<TimerApp> {

  int hourBefore = 0;
  int hourAfter = 0;
  int minutBefore = 0;
  int minutAfter = 0;
  Timer? timer;
  Timer? hourTimer;
  TimerState status = TimerState.initial;


  void startTimer() {
    setState(() {
      status = TimerState.inProgress;
     if(status != TimerState.wait) {
       startMinut();
     }
    });
  }

  void startHour() {
    setState(() {
      if(hourBefore == 0 && hourAfter == 0) {
        status = TimerState.wait;
        timer?.cancel();
      } else if(hourBefore > 0 && hourAfter == 0) {
        --hourBefore;
        hourAfter = 9;

        minutBefore = 5;
        minutAfter = 9;
        startMinut();
      } else if(hourBefore == 0 && hourAfter > 0) {
        --hourAfter;
        minutBefore = 5;
        minutAfter = 9;
        startMinut();
      } else if(hourBefore > 0 && hourAfter > 0) {
        --hourAfter;
        minutBefore = 5;
        minutAfter = 9;
        startMinut();
      }
    });
  }


  void startMinut() {
    if(hourBefore == 0 && hourAfter == 0 && minutBefore == 0 && minutAfter == 0) {
      setState(() {
        status = TimerState.initial;
      });
      return;
    }
    timer = Timer.periodic(Duration(minutes: 1), (_) {
      setState(() {
        if(minutBefore > 0 && minutAfter == 0) {
          --minutBefore;
          minutAfter = 9;
        } else if(minutBefore == 0 && minutAfter > 0) {
          --minutAfter;
        }

        if(minutBefore == 0 && minutAfter == 0) {
          startHour();
        }
      });
    });
  }


  void pause() {
    if(hourBefore == 0 && hourAfter == 0 && minutBefore == 0 && minutAfter == 0) {
      setState(() {
        status = TimerState.initial;
      });
      return;
    }

    if(timer!.isActive && status == TimerState.inProgress && status != TimerState.wait) {
      timer?.cancel();
      setState(() {
        status = TimerState.pause;
      });
    }
  }


  void resume() {
    if(hourBefore == 0 && hourAfter == 0 && minutBefore == 0 && minutAfter == 0) {
      setState(() {
        status = TimerState.initial;
      });
      return;
    }

    if(status == TimerState.pause || status != TimerState.wait) {
      startTimer();
      setState(() {
        status = TimerState.inProgress;
      });
    }
  }

  void stop() {

    if(hourBefore == 0 && hourAfter == 0 && minutBefore == 0 && minutAfter == 0) {
      setState(() {
        status = TimerState.initial;
      });
      return;
    }

    setState(() {
      status = TimerState.initial;
      hourBefore = 0;
      hourAfter = 0;
      minutBefore = 0;
      minutAfter = 0;
    });
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (hourBefore < 2 && status == TimerState.initial) {
                              ++hourBefore;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up, size: 40),
                      ),
                      Text("$hourBefore", style: TextStyle(fontSize: 30)),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (hourBefore > 0 && status == TimerState.initial) {
                              --hourBefore;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_down, size: 40),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (hourAfter < 3 && status == TimerState.initial) {
                              ++hourAfter;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up, size: 40),
                      ),
                      Text("$hourAfter", style: TextStyle(fontSize: 30)),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (hourAfter > 0 && status == TimerState.initial) {
                              --hourAfter;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_down, size: 40),
                      ),
                    ],
                  ),

                  Text(
                    ":",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (minutBefore < 5 && status == TimerState.initial) {
                              ++minutBefore;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up, size: 40),
                      ),
                      Text("$minutBefore", style: TextStyle(fontSize: 30)),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (minutBefore > 0 && status == TimerState.initial) {
                              --minutBefore;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_down, size: 40),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (minutAfter < 9 && status == TimerState.initial) {
                              ++minutAfter;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_up, size: 40),
                      ),
                      Text("$minutAfter", style: TextStyle(fontSize: 30)),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (minutAfter > 0 && status == TimerState.initial) {
                              --minutAfter;
                            }
                          });
                        },
                        icon: Icon(Icons.keyboard_arrow_down, size: 40),
                      ),
                    ],
                  ),
                ],
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if(status == TimerState.initial) ButtonApp(icon: Icons.play_arrow, onPressed: startTimer),
                    if(status == TimerState.inProgress) ButtonApp(icon: Icons.pause, onPressed: pause),
                    if(status == TimerState.pause) ButtonApp(icon: Icons.play_arrow, onPressed: resume),
                    if(status == TimerState.pause) ButtonApp(icon: Icons.stop, onPressed: stop),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
