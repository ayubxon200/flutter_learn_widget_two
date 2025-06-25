import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  final String title;
  final String iconTitle;
  final IconData icon;
  const SimplePage({required this.title, required this.iconTitle, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(fontSize: 25),),
        centerTitle: false,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40,),
            Text(iconTitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
