import 'package:flutter/material.dart';

class TopGreenContainer extends StatelessWidget {
  const TopGreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: LinearGradient(
          colors: [
            Colors.black87,
            Colors.green,
          ],
          // stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
      ),
      alignment: Alignment.topLeft,

      child: Container(
        margin: EdgeInsets.only(top: 40, left: 15),
        child: Column(
          children: [
            Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
            SizedBox(height: 10,),
            Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
