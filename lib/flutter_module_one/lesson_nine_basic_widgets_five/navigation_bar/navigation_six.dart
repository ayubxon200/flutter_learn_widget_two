import 'package:flutter/material.dart';

class NavigationSix extends StatefulWidget {
  const NavigationSix({super.key});

  @override
  State<NavigationSix> createState() => _NavigationSixState();
}

class _NavigationSixState extends State<NavigationSix> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings", backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
