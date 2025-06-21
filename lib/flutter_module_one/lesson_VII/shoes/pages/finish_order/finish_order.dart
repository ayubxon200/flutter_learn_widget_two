import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/development/container_app.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/pages/finished.dart';

class FinishOrder extends StatelessWidget {
  final int index;

  const FinishOrder({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Finish Order",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.black,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          ContainerApp(index: index),
          SizedBox(height: 40),

          Divider(),
          SizedBox(height: 150),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat blanditiis doloribus nihil assumenda adipisci earum deleniti illo. Corporis ab omnis, voluptate id exercitationem provident, tempore hic dolorem quo repudiandae excepturi nulla cum. Odit, dignissimos accusantium nostrum error fugit explicabo! Excepturi.",
            style: TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.left,
          ),

          SizedBox(height: 80),

          Container(
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.purple,
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Finished();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.transparent,
              ),
              child: Text(
                "Next",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
