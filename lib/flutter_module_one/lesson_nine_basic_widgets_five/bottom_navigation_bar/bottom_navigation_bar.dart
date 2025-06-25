// bottom_navigation_bar_app.dart
import 'package:flutter/material.dart';
import 'simple_page.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp>
    with AutomaticKeepAliveClientMixin {
  int _selected = 0;
  late final PageController _controller;

  final List<SimplePage> pages = [
    SimplePage(title: "Home", iconTitle: "My Sweet home", icon: Icons.home),
    SimplePage(title: "Animals", iconTitle: "My Sweet Animals", icon: Icons.cabin_rounded),
    SimplePage(title: "Plants", iconTitle: "My Sweet Plants", icon: Icons.nature),
    SimplePage(title: "Profile", iconTitle: "My Sweet Profile", icon: Icons.person),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _selected);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              _selected = index;
            });
          },
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected,
          onTap: (int index) {
            setState(() {
              _selected = index;
              _controller.jumpToPage(index);
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.cabin_rounded), label: "Animals"),
            BottomNavigationBarItem(icon: Icon(Icons.nature), label: "Plants"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          showUnselectedLabels: true,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
