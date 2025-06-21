import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/logo/view_accounts/view_credit_card_balance.dart';

class ViewAccounts extends StatelessWidget {
  const ViewAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(margin: EdgeInsets.only(top: 80)),
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
                "Accounts",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          
          SizedBox(height: 80,),
          _ButtonsThree(title: "Checking Account"),
          SizedBox(height: 10,),
          _ButtonsThree(title: "Savings Account"),
          SizedBox(height: 10,),
          _ButtonApp(title: "Credit Card Balance"),

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

class _ButtonsThree extends StatelessWidget {
  final String title;

  const _ButtonsThree({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        color: Colors.blue,
      ),
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 60,
          ),
        ),
        child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}


class _ButtonApp extends StatelessWidget {
  final String title;

  const _ButtonApp({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            return ViewCreditCardBalance();
          }));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 60,
          ),
        ),
        child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}