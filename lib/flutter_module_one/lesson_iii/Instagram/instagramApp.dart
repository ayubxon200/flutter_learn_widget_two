import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_iii/Instagram/sizedBox/sizedBox.dart';

import '../Login/bottom/TextField/textField.dart';


class InstagramApp extends StatefulWidget {
  const InstagramApp({super.key});

  @override
  State<InstagramApp> createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {

  // final TextEditingController _controller = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Instagram", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),

              SizedBoxApp(height: 50),

              TextFieldApp(text: "Name"),

              SizedBoxApp(height: 10,),

              TextFieldApp(text: "Email"),

              SizedBoxApp(height: 10,),

              TextFieldApp(text: "Password", obscureText: true,),

              SizedBoxApp(height: 10,),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  backgroundColor: Colors.blue,
                ),
                child: Text("Sign Up", style: TextStyle(color: Colors.white),),
              ),

              SizedBoxApp(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have a account?"),
                  SizedBoxApp(width: 10,),
                  Text("Log in", style: TextStyle(fontWeight: FontWeight.w600),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
