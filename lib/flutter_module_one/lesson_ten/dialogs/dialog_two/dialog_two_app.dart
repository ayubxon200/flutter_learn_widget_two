import 'package:flutter/material.dart';

class DialogTwoApp extends StatefulWidget {
  const DialogTwoApp({super.key});

  @override
  State<DialogTwoApp> createState() => _DialogTwoAppState();
}

class _DialogTwoAppState extends State<DialogTwoApp> {
  void dialogTwoShow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Whoa! Take it easy",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 10),
                Text(
                  "You can only post 1 quiz every 2 minutes",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                    child: Text(
                      "Got it",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: Colors.deepPurple),
          ),
          child: ElevatedButton(
            onPressed: () {
              dialogTwoShow(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              backgroundColor: Colors.transparent,
            ),
            child: Text(
              "Show Dialog Two App",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
