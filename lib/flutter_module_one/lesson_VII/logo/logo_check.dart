import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/retry_login/retry_login.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/view_accounts/view_accounts.dart';

class LogoCheck extends StatelessWidget {
  const LogoCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login  info correct?",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),


            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ViewAccounts();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.green,
              ),
              child: Text(
                "Correct",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),


            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RetryLogin();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.red,
              ),
              child: Text(
                "Incorrect",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
