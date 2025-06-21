import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/logo.dart';

class PasswordResetEmail extends StatelessWidget {
  const PasswordResetEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/unsplash_images/five.jpg"),
              width: MediaQuery.sizeOf(context).width - 50,
              height: 200,
              fit: BoxFit.cover,
            ),

            Container(
              width: MediaQuery.sizeOf(context).width - 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.purple, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Password reset",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.purple, width: 2),
                color: Colors.transparent,
              ),
              child: Icon(Icons.check, size: 30, color: Colors.white),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.purple, width: 2),
              ),
              child: Text(
                "Success!",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),

            SizedBox(height: 15),
            Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat blanditiis doloribus nihil assumenda adipisci earum deleniti illo. Corporis ab omnis, voluptate id exercitationem provident, tempore hic dolorem quo repudiandae excepturi nulla cum. Odit, dignissimos accusantium nostrum error fugit explicabo! Excepturi.",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Logo();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
