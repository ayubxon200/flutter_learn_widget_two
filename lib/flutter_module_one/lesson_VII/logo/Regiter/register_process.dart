import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/logo.dart';

class RegisterProcess extends StatelessWidget {
  const RegisterProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
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
            Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat blanditiis doloribus nihil assumenda adipisci earum deleniti illo.",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 15),
            _TextFieldLogo(hintText: "Username"),
            _TextFieldLogo(hintText: "Password", obscureText: true),

            SizedBox(height: 10),
            Container(
              width: MediaQuery.sizeOf(context).width - 150,
              height: 10,
              color: Colors.grey,
            ),

            SizedBox(height: 5,),
            SizedBox(
              width: 100,
              height: 40,
              child: TextField(
                style: TextStyle(fontSize: 15, color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
            ),

            SizedBox(height: 7),
            Container(
              width: MediaQuery.sizeOf(context).width - 150,
              height: 10,
              color: Colors.grey,
            ),

            SizedBox(height: 5,),
            SizedBox(
              width: 100,
              height: 40,
              child: TextField(
                style: TextStyle(fontSize: 15, color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),

            SizedBox(height: 7,),
            Container(
              width: MediaQuery.sizeOf(context).width - 150,
              height: 10,
              color: Colors.grey,
            ),

            SizedBox(height: 5,),
            SizedBox(
              width: 100,
              height: 40,
              child: TextField(
                style: TextStyle(fontSize: 15, color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.purple,
                      width: 1,
                    )
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Logo();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      "Register",
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
