import 'package:flutter/material.dart';

class NavigationThree extends StatefulWidget {
  const NavigationThree({super.key});

  @override
  State<NavigationThree> createState() => _NavigationThreeState();
}

class _NavigationThreeState extends State<NavigationThree> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
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
        ],
      ),
    );
  }
}
