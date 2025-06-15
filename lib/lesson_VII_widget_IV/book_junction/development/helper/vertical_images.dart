import 'package:flutter/material.dart';
import 'package:flutter_learn/book_junction/development/helper/book_detail_page.dart';

class VerticalImages extends StatefulWidget {
  final String url;
  final String book;
  const VerticalImages({required this.url, required this.book, super.key});

  @override
  State<VerticalImages> createState() => _VerticalImagesState();
}

class _VerticalImagesState extends State<VerticalImages> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailPage(url: widget.url, book: widget.book,),),);
          },
          child: Card(
            color: Colors.white,
            elevation: 10.0,
            shadowColor: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              height: 300,
              width: MediaQuery.sizeOf(context).width / 2 - 15,
              child: Column(
                children: [
                  Expanded(
                    child: HeaderImage(
                      assetImage: AssetImage(widget.url),
                    ),
                  ),
                  Content(text: widget.book, url: widget.url,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class Content extends StatelessWidget {
  final String text;
  final String url;
  const Content({required this.text, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Rating(),
                ],
              ),

              Text("Holly Black", style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400, fontSize: 13),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$9.99", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                  IconButton.outlined(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailPage(url: url, book: "",),),);
                  }, icon: Icon(Icons.arrow_forward, size: 15,),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 50,
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15),),
        color: Color(0xFFFFF8E0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Color(0xFFFCC400), size: 8,),
          SizedBox(width: 5,),
          Text("4.0", style: TextStyle(fontSize: 10),),
        ],
      ),
    );
  }
}


class HeaderImage extends StatelessWidget {
  final AssetImage assetImage;
  const HeaderImage({required this.assetImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF5EABD),
        borderRadius: BorderRadius.all(Radius.circular(5),),
      ),
      child: Image(image: assetImage),
    );
  }
}
