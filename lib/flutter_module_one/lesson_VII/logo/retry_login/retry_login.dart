import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/retry_login/check_for_retry_login.dart';

class RetryLogin extends StatelessWidget {
  const RetryLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image(
                image: AssetImage("assets/images/unsplash_images/five.jpg"),
                width: MediaQuery.sizeOf(context).width - 50,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),
            Divider(),

            SizedBox(height: 15),
            _TextFieldLogo(hintText: "Username"),
            _TextFieldLogo(hintText: "Password", obscureText: true),

            SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    Text(
                      "Lorem ipsum dolor sit",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),

                SizedBox(width: 30),
                Container(
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
                        return CheckForRetryLogin();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      "Go",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TextFieldLogo extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const _TextFieldLogo({
    required this.hintText,
    this.obscureText = false,
    super.key,
  });

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
        obscureText: obscureText,
      ),
    );
  }
}
