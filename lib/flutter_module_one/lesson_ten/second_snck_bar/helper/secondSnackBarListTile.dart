import 'package:flutter/material.dart';

class SecondSnackBarListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color containerBackgroundColor;
  const SecondSnackBarListTile({required this.title, required this.icon, required this.containerBackgroundColor, super.key});

  @override
  State<SecondSnackBarListTile> createState() => _SecondSnackBarListTileState();
}

class _SecondSnackBarListTileState extends State<SecondSnackBarListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: widget.containerBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(widget.icon, size: 20),
        ),
      ),
      title: Text(widget.title),
      titleTextStyle: TextStyle(fontSize: 20),
      trailing: IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
        },
        icon: Icon(Icons.close, size: 30),
      ),
    );
  }
}
