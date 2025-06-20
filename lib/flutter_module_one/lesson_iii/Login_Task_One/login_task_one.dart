import 'package:flutter/material.dart';

import '../src/google.dart';
import '../src/twitter.dart';
import 'functions.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String result = "";
  Color resultColor = Colors.red;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login check", style: TextStyle(fontSize: 25),),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios_new_outlined, size: 20,),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _emailController.clear();
                  _passwordController.clear();
                  _firstNameController.clear();
                  _lastNameController.clear();
                  _ageController.clear();
                  resultColor = Colors.red;
                });
              },
              icon: Icon(Icons.refresh_sharp, size: 25,),
            ),
          ],
        ),

        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  hintText: "First name",
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  hintText: "Last name",
                ),
              ),

              SizedBox(height: 30,),


              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  hintText: "Age",
                ),
              ),

              SizedBox(height: 30,),


              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
              ),

              SizedBox(height: 10,),

              Text(result, style: TextStyle(fontSize: 25, color: resultColor, fontWeight: FontWeight.w700),),

              SizedBox(height: 40,),

              GoogleSignInButton(
                text: "Google",
                onPressed: () {
                  setState(() {
                    final emailController = _emailController.text;
                    final passwordController = _passwordController.text;
                    resultColor = Colors.red;

                    if(!checkEmail(emailController.toString()) && !checkPassword(passwordController.toString())) {
                      result = "Password and Email error";
                    }
                    if(!checkEmail(emailController.toString())) {
                      result = "Email error";
                    } else if(!checkPassword(passwordController.toString())) {
                      result = "Password error";
                    } else {
                      result = "Success";
                      resultColor = Colors.green;
                    }
                  });
                },
              ),

              SizedBox(height: 10,),

              TwitterSignInButton(
                text: "Twitter",
                onPressed: () {
                  setState(() {
                    final emailController = _emailController.text;
                    final passwordController = _passwordController.text;
                    resultColor = Colors.red;

                    if(!checkEmail(emailController.toString()) && !checkPassword(passwordController.toString())) {
                      result = "Password and Email error";
                    }
                    if(!checkEmail(emailController.toString())) {
                      result = "Email error";
                    } else if(!checkPassword(passwordController.toString())) {
                      result = "Password error";
                    } else {
                      result = "Success";
                      resultColor = Colors.green;
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}