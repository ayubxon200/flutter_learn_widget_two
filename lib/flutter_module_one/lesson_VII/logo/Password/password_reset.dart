import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/Password/request_password.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

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

            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat blanditiis doloribus nihil assumenda adipisci earum deleniti illo. Corporis ab omnis, voluptate id exercitationem provident, tempore hic dolorem quo repudiandae excepturi nulla cum. Odit, dignissimos accusantium nostrum error fugit explicabo! Excepturi.",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: 15),
            _TextFieldLogo(hintText: "Email"),

            Center(
              child: Text(
                "Lorem ipsum dolor sit amet, Excepturi.",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.purple,
                    width: 1,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RequestPassword();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  ),
                  child: Text(
                    "Send temporary password",
                    style: TextStyle(fontSize: 16, color: Colors.white),
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

class _TextFieldLogo extends StatelessWidget {
  final String hintText;

  const _TextFieldLogo({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width - 50,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
