import 'package:flutter/material.dart';
import 'helper/avatar_container.dart';
import 'helper/contrastButton.dart';
import 'helper/contrastColoredBox.dart';

class Contrast extends StatelessWidget {
  const Contrast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contrast", style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 25)),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container for image
            Container(
              width: MediaQuery.sizeOf(context).width - 10,
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/unsplash_images/five.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 10),

            // container for colors
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: 80,
                    width: 150,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Primary", style: TextStyle(color: Colors.white)),
                        ContrastColorBox(
                          color: Colors.red,
                          colorRgbFormat: "#FF5065",
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 20),

                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: 80,
                    width: 150,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Secondary",
                          style: TextStyle(color: Colors.white),
                        ),
                        ContrastColorBox(
                          color: Colors.white,
                          colorRgbFormat: "#DEFFFD",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // name and content container
            Container(
              width: MediaQuery.sizeOf(context).width - 70,
              // padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AvatarContainer(
                    name: "Tim",
                    nameTitle: "Never thought of that",
                  ),
                  AvatarContainer(
                    name: "Jenny",
                    nameTitle: "How do you know you've succeeded?",
                    color: Colors.blue,
                  ),
                  AvatarContainer(
                    name: "Max",
                    nameTitle: "That's the tricky part",
                    color: Colors.greenAccent,
                  ),
                ],
              ),
            ),

            // Padding content one
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Engage your audience, until the end",
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.w700),
                textAlign: TextAlign.start,
              ),
            ),

            // Padding content two
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Meet the new way to run webinars. Fun, engaging and authentically you.",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ),

            ContrastButton(title: "Book a demo", color: Colors.white, textColor: Colors.black,),
            ContrastButton(title: "Start or free", color: Colors.pink, textColor: Colors.white,),
          ],
        ),
      ),
    );
  }
}
