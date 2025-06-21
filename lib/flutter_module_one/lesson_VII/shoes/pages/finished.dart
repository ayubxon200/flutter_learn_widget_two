import 'package:flutter/material.dart';

class Finished extends StatelessWidget {
  const Finished({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.purple,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Icon(Icons.check, size: 60, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
