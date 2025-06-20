import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final String url;
  final String book;

  const BookDetailPage({required this.url, required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(url, height: 300),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 5),
                Text("4.8"),
                SizedBox(width: 20),
                Chip(label: Text("Fantasy")),
                SizedBox(width: 20),
                Text("432 Pages"),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Synopsis",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "This is a sample description of the book named $book. You can add full description here...",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
