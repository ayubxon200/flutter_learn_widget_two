import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/pages/finish_order/finish_order.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/pages/register/register.dart';

class CheckForCardApp extends StatelessWidget {
  final int index;
  const CheckForCardApp({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Do you have an account?", style: TextStyle(fontSize: 40, color: Colors.white), textAlign: TextAlign.center,),
            SizedBox(height: 40),

            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FinishOrder(index: index);
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    backgroundColor: Colors.green,
                  ),
                  child: Text("Yes", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Register(index: index,);
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    backgroundColor: Colors.red,
                  ),
                  child: Text("No", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}