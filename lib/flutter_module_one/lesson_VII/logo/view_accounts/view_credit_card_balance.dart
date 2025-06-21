import 'package:flutter/material.dart';

class ViewCreditCardBalance extends StatelessWidget {
  const ViewCreditCardBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(margin: EdgeInsets.only(top: 50)),

          Image(
            image: AssetImage("assets/images/unsplash_images/five.jpg"),
            width: MediaQuery.sizeOf(context).width - 50,
            height: 150,
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
                "Credit Cart Balance",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            color: Colors.grey,
            width: MediaQuery.sizeOf(context).width - 50,
            height: 200,
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat blanditiis doloribus nihil assumenda adipisci earum deleniti illo. Corporis ab omnis, voluptate id exercitationem provident, tempore hic dolorem quo repudiandae excepturi nulla cum. Odit, dignissimos accusantium nostrum error fugit explicabo! Excepturi.",
              style: TextStyle(fontSize: 15, color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),

          SizedBox(height: 10,),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                child: Text(
                  "Go",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),

          Expanded(
            child: SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call, size: 30, color: Colors.white,),
                    SizedBox(width: 10,),
                    Icon(Icons.menu, size: 30, color: Colors.white,),
                    SizedBox(width: 10,),
                    Icon(Icons.location_on, size: 30, color: Colors.white,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
