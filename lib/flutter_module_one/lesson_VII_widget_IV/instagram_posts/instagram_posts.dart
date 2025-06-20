import 'package:flutter/material.dart';

import 'image_file.dart';

class InstagramPosts extends StatefulWidget {
  const InstagramPosts({super.key});

  @override
  State<InstagramPosts> createState() => _InstagramPostsState();
}

class _InstagramPostsState extends State<InstagramPosts> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar
        appBar: AppBar(
          leading: SafeArea(child: Icon(Icons.arrow_back_rounded)),
          title: SafeArea(child: Text("Live Wallpapers 4K")),
          centerTitle: true,
          actions: [
            SafeArea(child: Icon(Icons.notification_add)),
            SafeArea(child: Icon(Icons.more_vert)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Transform.rotate(
                      angle: 4.71,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _controller.animateToPage(
                              0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.decelerate,
                            );
                          });
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 150),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _controller.animateToPage(
                        1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.decelerate,
                      );
                    });
                  },
                  icon: Icon(Icons.favorite),
                ),
              ],
            ),
          ),
        ),

        body: PageView(
          controller: _controller,
          children: [
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                childAspectRatio: 0.6,
              ),
              children: [
                // ono
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/one.jpg",
                  ),
                ),

                // two
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/two.jpg",
                  ),
                ),

                // three
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/three.jpg",
                  ),
                ),

                // four
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/four.jpg",
                  ),
                ),

                // five
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/five.jpg",
                  ),
                ),

                // six
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/six.jpg",
                  ),
                ),

                // seven
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/seven.jpg",
                  ),
                ),

                // eight
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/eight.jpg",
                  ),
                ),

                // nine
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/nine.jpg",
                  ),
                ),

                // ten
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/ten.jpg",
                  ),
                ),

                // eleven
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/eleven.jpg",
                  ),
                ),

                // twoleven
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/twoleven.jpg",
                  ),
                ),
              ],
            ),

            GridView(
              reverse: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                childAspectRatio: 0.6,
              ),
              children: [
                // ono
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/one.jpg",
                  ),
                ),

                // two
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/two.jpg",
                  ),
                ),

                // three
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/three.jpg",
                  ),
                ),

                // four
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/four.jpg",
                  ),
                ),

                // five
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/five.jpg",
                  ),
                ),

                // six
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/six.jpg",
                  ),
                ),

                // seven
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/seven.jpg",
                  ),
                ),

                // eight
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/eight.jpg",
                  ),
                ),

                // nine
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/nine.jpg",
                  ),
                ),

                // ten
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/ten.jpg",
                  ),
                ),

                // eleven
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/eleven.jpg",
                  ),
                ),

                // twoleven
                ImageFile(
                  image: AssetImage(
                    "assets/images/instagram_posts_images/twoleven.jpg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
