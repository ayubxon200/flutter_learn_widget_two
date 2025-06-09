import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top icons
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.info_outline, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(Icons.settings, color: Colors.white),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            counter = 0;
                          });
                        },
                        icon: Icon(
                          Icons.refresh_sharp,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    "$counter",
                    style: TextStyle(color: Colors.white, fontSize: 200),
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "-12",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "Limit Reached",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),

              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (counter > -12) {
                              --counter;
                            }
                          });
                        },
                        icon: Icon(Icons.remove, color: Colors.white, size: 40),
                      ),
                    ),

                    SizedBox(width: 150),

                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            ++counter;
                          });
                        },
                        icon: Icon(Icons.add, color: Colors.white, size: 40),
                      ),
                    ),
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
