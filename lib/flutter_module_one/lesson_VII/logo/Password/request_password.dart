import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/password_reset_email/password_reset_email.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/reenter_email_address/reenter_email_address.dart';

class RequestPassword extends StatelessWidget {
  const RequestPassword({super.key});

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
              "Email matches database",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),


            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PasswordResetEmail();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.green,
              ),
              child: Text(
                "Matches database",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),


            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ReenterEmailAddress();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                backgroundColor: Colors.red,
              ),
              child: Text(
                "Doesn't match database",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
