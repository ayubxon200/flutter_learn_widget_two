import 'package:flutter/material.dart';

class BottomAppbarApp extends StatefulWidget {
  const BottomAppbarApp({super.key});

  @override
  State<BottomAppbarApp> createState() => _BottomAppbarAppState();
}

class _BottomAppbarAppState extends State<BottomAppbarApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        // Rasm appbar orqasiga ham o‘tsin
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.watch_later_sharp),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Following",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(width: 5),
              Text(
                "|",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "For You",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [Icon(Icons.search, color: Colors.white, size: 30)],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/unsplash_images/five.jpg",
                fit: BoxFit.cover,
              ),
            ),

            Row(
              children: [
                Expanded(child: Container()),

                NavigationRail(
                  backgroundColor: Colors.transparent,
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  groupAlignment: 0.9,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      selectedIcon: Icon(Icons.favorite, color: Colors.white),
                      label: Text(
                        "121.1K",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                      ),
                      selectedIcon: Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      label: Text("335", style: TextStyle(color: Colors.white)),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.bookmark_border, color: Colors.white),
                      selectedIcon: Icon(Icons.bookmark, color: Colors.white),
                      label: Text("21K", style: TextStyle(color: Colors.white)),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.share_sharp, color: Colors.white),
                      label: Text(
                        "11.2K",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                  trailing: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/unsplash_images/five.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8.0,
          color: Colors.black,
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home, color: Colors.white)),
                  Text("Home", style: TextStyle(color: Colors.white)),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.person_2, color: Colors.white)),
                  Text("Person", style: TextStyle(color: Colors.white)),
                ],
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.black),
                style: IconButton.styleFrom(backgroundColor: Colors.white, ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.chat_rounded, color: Colors.white)),
                  Text("Inbox", style: TextStyle(color: Colors.white)),
                ],
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Colors.white)),
                  Text("Profile", style: TextStyle(color: Colors.white)),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
