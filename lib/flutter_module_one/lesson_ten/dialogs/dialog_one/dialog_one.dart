import 'package:flutter/material.dart';

class DialogOne extends StatefulWidget {
  const DialogOne({super.key});

  @override
  State<DialogOne> createState() => _DialogOneState();
}

class _DialogOneState extends State<DialogOne> {
  void dialogOneShow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container for Icon
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, size: 30, color: Colors.white,),
                ),

                SizedBox(height: 20),
                Text(
                  "Submit Successfully",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ), textAlign: TextAlign.center,
                ),

                SizedBox(height: 20,),

                Text(
                  "your transaction has been submitted successfully",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ), textAlign: TextAlign.center,
                ),

                SizedBox(height: 30),

                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                    ),
                    child: Text("Done", style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            dialogOneShow(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
          ),
          child: Text("Show Dialog One", style: TextStyle(fontSize: 20, color: Colors.white),),
        ),
      ),
    );
  }
}
