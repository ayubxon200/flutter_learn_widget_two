import 'package:flutter/material.dart';

class DialogSixApp extends StatefulWidget {
  const DialogSixApp({super.key});

  @override
  State<DialogSixApp> createState() => _DialogSixAppState();
}

class _DialogSixAppState extends State<DialogSixApp> {

  bool? firstSelected = true;
  bool? secondSelected = false;
  bool? thirdSelected = false;

  void dialogTwoShowApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState,) {
            return Dialog(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("App animation", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                    SizedBox(height: 10,),

                    ListTile(
                      leading: Checkbox(
                        value: firstSelected,
                        onChanged: (value) {
                          setState(() {
                            if(value == true && secondSelected == false && thirdSelected == false) firstSelected = value;
                            else if(value == true && secondSelected == true && thirdSelected == false) {
                              firstSelected = value;
                              secondSelected = false;
                            } else if(value == true && secondSelected == false && thirdSelected == true) {
                              firstSelected = value;
                              thirdSelected = false;
                            }
                          });
                          this.setState(() {
                            if(value == true && secondSelected == false && thirdSelected == false) firstSelected = value;
                            else if(value == true && secondSelected == true && thirdSelected == false) {
                              firstSelected = value;
                              secondSelected = false;
                            } else if(value == true && secondSelected == false && thirdSelected == true) {
                              firstSelected = value;
                              thirdSelected = false;
                            }
                          });
                        },
                      ),
                      title: Text("Default"),
                    ),

                    SizedBox(height: 20,),
                    ListTile(
                      leading: Checkbox(
                        value: secondSelected,
                        onChanged: (value) {
                          setState(() {
                            if(value == true && firstSelected == false && thirdSelected == false) secondSelected = value;
                            else if(value == true && firstSelected == true && thirdSelected == false) {
                              secondSelected = value;
                              firstSelected = false;
                            } else if(value == true && firstSelected == false && thirdSelected == true) {
                              secondSelected = value;
                              thirdSelected = false;
                            }
                          });
                          this.setState(() {
                            if(value == true && firstSelected == false && thirdSelected == false) secondSelected = value;
                            else if(value == true && firstSelected == true && thirdSelected == false) {
                              secondSelected = value;
                              firstSelected = false;
                            } else if(value == true && firstSelected == false && thirdSelected == true) {
                              secondSelected = value;
                              thirdSelected = false;
                            }
                          });
                        },
                      ),
                      title: Text("Fade in"),
                    ),

                    SizedBox(height: 10,),
                    ListTile(
                      leading: Checkbox(
                        value: thirdSelected,
                        onChanged: (value) {
                          setState(() {
                            if(value == true && firstSelected == false && secondSelected == false) thirdSelected = value;
                            else if(value == true && firstSelected == true && secondSelected == false) {
                              thirdSelected = value;
                              firstSelected = false;
                            } else if(value == true && firstSelected == false && secondSelected == true) {
                              thirdSelected = value;
                              secondSelected = false;
                            }
                          });
                          this.setState(() {
                            if(value == true && firstSelected == false && secondSelected == false) thirdSelected = value;
                            else if(value == true && firstSelected == true && secondSelected == false) {
                              thirdSelected = value;
                              firstSelected = false;
                            } else if(value == true && firstSelected == false && secondSelected == true) {
                              thirdSelected = value;
                              secondSelected = false;
                            }
                          });
                        },
                      ),
                      title: Text("Slide from left"),
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
              "Show Dialog Six App",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
