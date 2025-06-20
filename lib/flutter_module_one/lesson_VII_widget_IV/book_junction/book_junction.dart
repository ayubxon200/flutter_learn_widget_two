import 'package:flutter/material.dart';

import 'development/buttons/search_button.dart';
import 'development/helper/horizontal_list.dart';
import 'development/helper/tittle.dart';
import 'development/helper/vertical_images.dart';


class BookJunction extends StatefulWidget {
  const BookJunction({super.key});

  @override
  State<BookJunction> createState() => _BookJunctionState();
}

class _BookJunctionState extends State<BookJunction> {

  final List<Widget> listImageHorizontal = [
    HorizontalList(image: AssetImage("assets/images/widget_iv_images/horizontal_image_one.png"), url: "assets/images/widget_iv_images/horizontal_image_one.png",),
    HorizontalList(image: AssetImage("assets/images/widget_iv_images/horizontal_image_two.png"), url: "assets/images/widget_iv_images/horizontal_image_two.png", color: Colors.blueGrey,),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // Appbar Tittle and Icon notification_add
        appBar: AppBar(
          title: Row(
            children: [
              // black text
              Text("Book", style: TextStyle(fontSize: 20),),

              // pink text
              Text("Junction", style: TextStyle(fontSize: 20, color: Colors.pink),),
            ],
          ),

          centerTitle: false,
          actions: [
            Icon(Icons.notification_add, size: 25,),
          ],
        ),

        // Column
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SearchButton(),
              ),
          
              // Title All, Romance, Sci-Fi, Fantasy, Classics
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextTitle(text: "All"),
                  TextTitle(text: "Romance"),
                  TextTitle(text: "Sci-Fi"),
                  TextTitle(text: "Fantasy", backgroundColor: Colors.deepPurple, textColor: Colors.white,),
                  TextTitle(text: "Classics"),
                ],
              ),
          
              // Continue Reading Container
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Text(
                  "Continue Reading",
                  style: TextStyle(fontSize: 16,),
                ),
              ),
          
              // horizontal top image
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i = 0; i < listImageHorizontal.length; i++)
                      listImageHorizontal[i],
                  ],
                ),
              ),
          
            //   Vertical Image
             SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Column(
                 children: [
                   // Birinchi qism
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Expanded(child: VerticalImages(url: "assets/images/widget_iv_images/vertical_image_one.png", book: "Book of night")),
                       SizedBox(width: 10,),
                       Expanded(child: VerticalImages(url: "assets/images/widget_iv_images/vertical_image_two.png", book: "The Wolf Den")),
                     ],
                   ),
          
                   SizedBox(height: 10,),
                 //   Ikkinchi qism
                   Row(
                     children: [
                       Expanded(child: VerticalImages(url: "assets/images/widget_iv_images/vertical_image_three.png", book: "Book of night")),
                       SizedBox(width: 10,),
                       Expanded(child: VerticalImages(url: "assets/images/widget_iv_images/vertical_image_four.png", book: "The Wolf Den")),
                     ],
                   ),
          
                   SizedBox(height: 10,),
                   //   Uchinchi qism
                   Row(
                     children: [
                       Expanded(child: VerticalImages(url: "assets/images/widget_iv_images/vertical_image_five.png", book: "Book of night")),
                       SizedBox(width: 10,),
                       Expanded(child: VerticalImages(url: "assets/images/widget_iv_images/vertical_image_six.png", book: "The Wolf Den")),
                     ],
                   ),
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
