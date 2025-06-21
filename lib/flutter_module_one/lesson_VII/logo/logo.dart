import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/logo_check.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 80),
            width: MediaQuery.sizeOf(context).width - 50,
            height: 400,
            child: _ImageLogo(),
          ),

          _TextFieldLogo(hintText: "Username"),
          _TextFieldLogo(hintText: "Password", obscureText: true,),

          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LogoCheck();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30)
              ),
              child: Text(
                "Go",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageLogo extends StatelessWidget {
  const _ImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/instagram_posts_images/seven.jpg"),
      fit: BoxFit.cover,
    );
  }
}

class _TextFieldLogo extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const _TextFieldLogo({required this.hintText, this.obscureText = false, super.key});

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
