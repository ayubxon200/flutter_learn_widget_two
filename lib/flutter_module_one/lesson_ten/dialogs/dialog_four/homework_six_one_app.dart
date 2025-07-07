import 'package:flutter/material.dart';

class HomeworkSixOneApp extends StatefulWidget {
  const HomeworkSixOneApp({super.key});

  @override
  State<HomeworkSixOneApp> createState() => _HomeworkSixOneAppState();
}

class _HomeworkSixOneAppState extends State<HomeworkSixOneApp> {

  bool? firstSelected = true;
  bool? secondSelected = true;
  bool? thirdSelected = true;
  bool? fourth = true;

  void dialogTwoShowApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState,) {
            return Dialog(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
                          ),
                        ),

                        SizedBox(width: 15,),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Pro Plan", style: TextStyle(fontSize: 18, color: Colors.blue),),
                            Text(r"$240 / truck", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20,),
                    Text('Better suited for large companies', style: TextStyle(fontSize: 17),),

                    SizedBox(height: 10,),
                    ListTile(
                      leading: Checkbox(
                        value: firstSelected,
                        onChanged: (value) {
                          setState(() {
                            firstSelected = value;
                          });
                          this.setState(() {
                            firstSelected = value;
                          });
                        },
                      ),
                      title: Text("Everything included in the Basic plan", style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ),

                    ListTile(
                      leading: Checkbox(
                        value: secondSelected,
                        onChanged: (value) {
                          setState(() {
                            secondSelected = value;
                          });
                          this.setState(() {
                            secondSelected = value;
                          });
                        },
                      ),
                      title: Text("Logistics assistant", style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ),

                    ListTile(
                      leading: Checkbox(
                        value: thirdSelected,
                        onChanged: (value) {
                          setState(() {
                            thirdSelected = value;
                          });
                          this.setState(() {
                            thirdSelected = value;
                          });
                        },
                      ),
                      title: Text("Unlimited miles pet truck ina month", style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ),

                    ListTile(
                      leading: Checkbox(
                        value: fourth,
                        onChanged: (value) {
                          setState(() {
                            fourth = value;
                          });
                          this.setState(() {
                            fourth = value;
                          });
                        },
                      ),
                      title: Text("24 / 7 help and support", style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ),
                    
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                        ),
                        child: Text("Subscribe", style: TextStyle(fontSize: 18, color: Colors.white),),
                      ),
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
              "Show Dialog Homework Six One App",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

//assets/images/instagram_posts_images/nine.jpg