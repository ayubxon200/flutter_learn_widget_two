import 'package:flutter/material.dart';
import 'package:flutter_learn/book_junction/development/helper/book_detail_page.dart';

class HorizontalList extends StatelessWidget {
  final AssetImage image;
  final String url;
  final Color color;
  const HorizontalList({required this.image, required this.url, this.color = Colors.blueAccent, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailPage(url: url, book: "",),),);
          },
          child: Row(
            children: [

              // Image container
              Container(
                width: 100,
                height: 144,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image(image: image, height: 105, width: 69,),
                ),
              ),

              SizedBox(width: 10,),

              Column(
                children: [
                  Text("A Day of Fallen Night", style: TextStyle(fontSize: 20),),
                  Text("Samantha Shannon", style: TextStyle(fontSize: 15),),

                  // Ekranning 30% egallash
                  SizedBox(height: 10,),
                  Container(
                    width: 100,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    // alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: 0.3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFD1618A),
                        ),
                      ),
                    ),
                  ),

                  // 30% Text
                  SizedBox(height: 5,),
                  Container(
                    width: 100,
                    alignment: Alignment.topRight,
                    child: Text("30%"),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailPage(url: url, book: "",),),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Text("Update Progress"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
