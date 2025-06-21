import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/pages/finish_order/finish_order.dart';

class Register extends StatefulWidget {
  final int index;
  const Register({required this.index, super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          TextFieldApp(hintText: "Name"),
          TextFieldApp(hintText: "Surname"),
          TextFieldApp(hintText: "Email"),
          TextFieldApp(hintText: "Phone"),
          TextFieldApp(hintText: "Address"),

          Expanded(
            child: SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FinishOrder(index: widget.index);
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldApp extends StatelessWidget {
  final String hintText;

  const TextFieldApp({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      alignment: Alignment.center,
      width: MediaQuery.sizeOf(context).width - 50,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
