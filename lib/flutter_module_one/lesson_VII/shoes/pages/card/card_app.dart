import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/pages/card/check_for_card_app.dart';

import '../../development/container_app.dart';

class CardApp extends StatelessWidget {
  final int index;

  const CardApp({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SafeArea(
          child: Text(
            "Card",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.white,
        ),
      ),

      body: Column(
        children: [
          ContainerApp(index: index),
          SizedBox(height: 100),

          Divider(),

          SizedBox(height: 150),

          Container(
            alignment: Alignment.center,
            width: MediaQuery.sizeOf(context).width - 50,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          Expanded(
            child: SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CheckForCardApp(index: index);
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(
                    "Check out",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
