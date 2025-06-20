import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.search, size: 25,),
              ),
              SizedBox(width: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for books",
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.mic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
