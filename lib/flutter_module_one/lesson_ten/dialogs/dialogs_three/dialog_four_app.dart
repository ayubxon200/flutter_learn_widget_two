import 'package:flutter/material.dart';

class DialogFourApp extends StatefulWidget {
  const DialogFourApp({super.key});

  @override
  State<DialogFourApp> createState() => _DialogFourAppState();
}

class _DialogFourAppState extends State<DialogFourApp> {
  void dialogTwoShowApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image
                Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage("assets/images/dialog_image/two.jpg"),
                    width: 250,
                    height: 300,
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  "Unlock magic features",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                SizedBox(height: 10),
                Text(
                  "Discovery the amazing features we designed to empower your customization experience",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
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
              dialogTwoShowApp(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              backgroundColor: Colors.transparent,
            ),
            child: Text(
              "Show Dialog Four App",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
