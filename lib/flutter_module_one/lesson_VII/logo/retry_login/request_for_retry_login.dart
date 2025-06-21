import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/Password/password_reset.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/retry_login/retry_login.dart';

class RequestForRetryLogin extends StatelessWidget {
  const RequestForRetryLogin({super.key});

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
              "Incorrect more then 3 items?",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),


            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RetryLogin();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.green,
              ),
              child: Text(
                "No",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),


            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PasswordReset();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.red,
              ),
              child: Text(
                "Yes",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
