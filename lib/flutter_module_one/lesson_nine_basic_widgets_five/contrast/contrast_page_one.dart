import 'package:flutter/material.dart';

class ContrastPageOne extends StatelessWidget {
  const ContrastPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contrast", style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 25)),
        ],
      ),

      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          // our story gestureDetector
          GestureDetector(
            onTap: () {},
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(5, 5),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Text(
                    "OUR STORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "The way we create and consume",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Text(
                    "Video",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(width: 10,),
                Icon(Icons.videocam_outlined, size: 60, color: Colors.white, shadows: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(5, 5),
                    spreadRadius: 1,
                    blurRadius: 9,
                  )
                ],),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Has changed a lot",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
