
import 'package:flutter/material.dart';

class TextAndBorderContainer extends StatelessWidget {
  const TextAndBorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.transparent,
            Colors.black,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 30, bottom: 15),
      child: Text("PDP ACADEMY", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),),
    );
  }
}

