import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 250,
                height: 280,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      offset: Offset(0, 6),
                      blurRadius: 12,
                      spreadRadius: -1,
                    ),
                  ],

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_two.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 50),

              Text(
                "Listen to the podcast, feel the pain",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
              ),

              SizedBox(height: 20),

              SizedBox(
                width: 200,

                child: Text(
                  "Listen to podcast anywhere at anytime",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),

              SizedBox(height: 40),

              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.white70.withOpacity(0.5), Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
