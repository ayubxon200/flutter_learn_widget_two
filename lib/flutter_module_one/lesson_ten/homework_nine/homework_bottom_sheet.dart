import 'package:flutter/material.dart';

class HomeworkBottomSheet extends StatefulWidget {
  const HomeworkBottomSheet({super.key});

  @override
  State<HomeworkBottomSheet> createState() => _HomeworkBottomSheetState();
}

class _HomeworkBottomSheetState extends State<HomeworkBottomSheet> {

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/lesson_ten/gift.jpg"), width: 150, height: 150, fit: BoxFit.cover,),
              SizedBox(height: 20,),

              Text("Have a promo code", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
              Text("Please login to redeem your promo code", style: TextStyle(fontSize: 16, color: Colors.grey), textAlign: TextAlign.center,),

              SizedBox(height: 15,),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                    backgroundColor: Colors.red,
                  ),
                  child: Text("Login", style: TextStyle(fontSize: 16, color: Colors.white),),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.purple, width: 2),
          ),
          child: ElevatedButton(
            onPressed: () {
              showBottomSheet(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              backgroundColor: Colors.transparent,
            ),
            child: Text("Show bottom sheet"),
          ),
        ),
      ),
    );
  }
}
