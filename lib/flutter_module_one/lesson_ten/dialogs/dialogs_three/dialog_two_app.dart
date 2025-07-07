import 'package:flutter/material.dart';

class DialogTwoApp extends StatefulWidget {
  const DialogTwoApp({super.key});

  @override
  State<DialogTwoApp> createState() => _DialogTwoAppState();
}

class _DialogTwoAppState extends State<DialogTwoApp> {
  bool? firstSelected = true;
  bool? secondSelected = false;

  void dialogTwoShowApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {

        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) {
            return Dialog(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Search Bar",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    Text(
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      "Select the search bar position. The page will continue to appear from the same side.",
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: firstSelected,
                          onChanged: (value) {
                            setState(() {
                              if (value == true && secondSelected == false) {
                                firstSelected = value;
                              } else if (value == true && secondSelected == true) {
                                firstSelected = value;
                                secondSelected = false;
                              }
                            });
                            this.setState(() {
                              if (value == true && secondSelected == false) {
                                firstSelected = value ?? false;
                              } else if (value == true && secondSelected == true) {
                                firstSelected = value;
                                secondSelected = false;
                              }
                            });
                          },
                        ),
                        SizedBox(width: 20),
                        Text("Top"),
                      ],
                    ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: secondSelected,
                          onChanged: (value) {
                            setState(() {
                              if (value == true && firstSelected == false) {
                                secondSelected = value;
                              } else if (value == true && firstSelected == true) {
                                secondSelected = value;
                                firstSelected = false;
                              }
                            });
                            this.setState(() {
                              if (value == true && firstSelected == false) {
                                secondSelected = value ?? false;
                              } else if (value == true && firstSelected == true) {
                                secondSelected = value;
                                firstSelected = false;
                              }
                            });
                          },
                        ),
                        SizedBox(width: 20),
                        Text("Bottom"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
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
              dialogTwoShowApp(context);
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
