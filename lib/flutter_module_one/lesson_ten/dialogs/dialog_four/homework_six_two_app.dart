import 'package:flutter/material.dart';

class HomeworkSixTwoApp extends StatefulWidget {
  const HomeworkSixTwoApp({super.key});

  @override
  State<HomeworkSixTwoApp> createState() => _HomeworkSixTwoAppState();
}

class _HomeworkSixTwoAppState extends State<HomeworkSixTwoApp> {

  bool? firstSelected = false;
  bool? secondSelected = true;
  bool? thirdSelected = false;

  void dialogTwoShowApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (
            BuildContext context, void Function(void Function()) setState,) {
            return Dialog(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose Department", style: TextStyle(fontSize: 18, color: Colors.grey),),

                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.search, size: 20,),
                        title: TextField(
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                            hintText: "Search for a department",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
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

                        SizedBox(width: 10,),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
                          ),
                        ),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Trucville PVT ltd.", style: TextStyle(fontSize: 16),),
                            Text("California", style: TextStyle(fontSize: 13),),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
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

                        SizedBox(width: 10,),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
                          ),
                        ),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Maxin Logistics", style: TextStyle(fontSize: 16),),
                            Text("Singapore", style: TextStyle(fontSize: 13),),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
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

                        SizedBox(width: 10,),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/instagram_posts_images/nine.jpg"),
                          ),
                        ),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Trucko Corp", style: TextStyle(fontSize: 16),),
                            Text("India", style: TextStyle(fontSize: 13),),
                          ],
                        )
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
              "Show Dialog Homework Six One App",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
