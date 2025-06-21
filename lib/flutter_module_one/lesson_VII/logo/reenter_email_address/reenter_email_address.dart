import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/reenter_email_address/request_for_reenter.dart';

class ReenterEmailAddress extends StatelessWidget {
  const ReenterEmailAddress({super.key});

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

            SizedBox(height: 15,),
            Container(
              width: MediaQuery.sizeOf(context).width - 70,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 15,),
            _TextFieldLogo(hintText: "Email"),

            SizedBox(height: 15,),

            Text(
              "Lorem ipsum dolor sit amet, consectetur",
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              "Lorem ipsum dolor sit",
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),

            SizedBox(height: 15,),
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
                    return RequestForReenter();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                child: Text(
                  "Send temporary password",
                  style: TextStyle(fontSize: 16, color: Colors.white),
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
