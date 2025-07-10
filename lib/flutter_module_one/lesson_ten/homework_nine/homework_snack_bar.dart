import 'package:flutter/material.dart';

class HomeworkSnackBar extends StatefulWidget {
  const HomeworkSnackBar({super.key});

  @override
  State<HomeworkSnackBar> createState() => _HomeworkSnackBarState();
}

class _HomeworkSnackBarState extends State<HomeworkSnackBar> {
  void showSnackBarHomework(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage("assets/images/lesson_ten/gift_two.jpg"),
              width: 90,
              height: 90,
            ),
            SizedBox(width: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("We have a gift for you", style: TextStyle(fontSize: 16)),
                SizedBox(
                  width: 200,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipose elit.",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    softWrap: true,
                  ),
                ),
              ],
            ),

            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                  icon: Icon(Icons.close, size: 30, color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.purple, width: 2),
          ),
          child: ElevatedButton(
            onPressed: () {
              showSnackBarHomework(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              backgroundColor: Colors.transparent,
            ),
            child: Text("Show Homework Snack Bar"),
          ),
        ),
      ),
    );
  }
}
