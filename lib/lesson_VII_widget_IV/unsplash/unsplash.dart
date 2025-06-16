import 'package:flutter/material.dart';
import 'package:flutter_learn/lesson_VII_widget_IV/unsplash/image.dart';
import 'package:flutter_learn/lesson_VII_widget_IV/unsplash/search_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Unsplash extends StatefulWidget {
  const Unsplash({super.key});

  @override
  State<Unsplash> createState() => _UnsplashState();
}

class _UnsplashState extends State<Unsplash> {
  final List<String> imageUrl = [
    "assets/images/unsplash_images/one.webp",
    "assets/images/unsplash_images/two.webp",
    "assets/images/unsplash_images/three.jpg",
    "assets/images/unsplash_images/four.jpg",
    "assets/images/unsplash_images/five.jpg",
    "assets/images/unsplash_images/six.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.menu),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  "Unsplash",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text("Beautiful, free photos", style: TextStyle(fontSize: 15)),

                SizedBox(height: 20),
                Align(alignment: Alignment.center, child: SearchButton()),

                SizedBox(height: 15),
                GridView.custom(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    pattern: [
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate((
                    context,
                    index,
                  ) {
                    return ImageUnsplash(image: AssetImage(imageUrl[index]));
                  }, childCount: imageUrl.length),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,

            crossAxisCount: 2,
            pattern: [
              QuiltedGridTile(2, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(2, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
                return ImageUnsplash(image: AssetImage(imageUrl[index],),);
              },
              childCount: imageUrl.length,
          ),
          ),
*/
