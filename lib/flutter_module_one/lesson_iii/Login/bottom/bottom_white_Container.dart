import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/Login/bottom/buttuon/button.dart';

import '../../Instagram/textField/textField.dart';
import 'Text/text.dart';


class BottomWhiteContainer extends StatelessWidget {
  const BottomWhiteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.35,
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsets.only(top: 200),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70),)
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            height: 140,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(20, 20),
                  blurRadius: 25.0,
                  spreadRadius: 1.0,
                ),

                BoxShadow(
                  color: Colors.black,
                  offset: Offset(20, 20),
                  blurRadius: 20.0,
                  spreadRadius: -60.0,
                )
              ],
              border: Border.all(
                  color: Colors.black12,
                  width: 2
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldApp(text: "Name"),

                  Divider(),

                  TextFieldApp(text: "Password", obscureText: true,),
                ],
              ),
            ),
          ),

          ButtonApp(backgroundColor: Colors.green, text: TextApp(text: "Login", color: Colors.white),),

          SizedBox(height: 4,),
          TextApp(text: "Login with SNS", color: Colors.grey,),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             ButtonApp(backgroundColor: Colors.blue, horizontal: 45, text: TextApp(text: "Facebook", color: Colors.white),),

              SizedBox(width: 20,),

              ButtonApp(backgroundColor: Colors.black, horizontal: 40, text: TextApp(text: "GitHub", color: Colors.white),),
            ],
          ),
        ],
      ),
    );
  }
}
