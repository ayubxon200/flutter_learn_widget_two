import 'package:flutter/material.dart';

import '../helper/book_detail_page.dart';

class SearchButton extends StatelessWidget {
  final String url;
  const SearchButton({required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailPage(url: url, book: "",),),);
      },
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
              Text("Search for books", style: TextStyle(fontSize: 20),),
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
