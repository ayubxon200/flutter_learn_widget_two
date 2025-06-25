import 'package:flutter/material.dart';

class NavigationApp extends StatefulWidget {
  const NavigationApp({super.key});

  @override
  State<NavigationApp> createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp>  {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(fontSize: 25)),
        actions: [Icon(Icons.search, size: 30)],
        centerTitle: false,
      ),
      body: Row(
        children: [
          NavigationRail(
            leading: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(image: AssetImage("assets/images/logotip/sap_logotip_original.png"), width: 100, height: 60, fit: BoxFit.cover,),

                SizedBox(height: 10,),

                FloatingActionButton(
                  onPressed: () {},
                  elevation: 0,
                  child: Icon(Icons.add),
                ),
              ],
            ),
            labelType: NavigationRailLabelType.all,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text("Home"),
                selectedIcon: Icon(Icons.house),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.inbox_outlined),
                label: Text("Inbox"),
                selectedIcon: Icon(Icons.inbox),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.check_box_outlined),
                label: Text("To do"),
                selectedIcon: Icon(Icons.check_box_rounded),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                label: Text("Basket"),
                selectedIcon: Icon(Icons.shopping_bag),
              ),
            ],
            selectedIndex: _selected,
            onDestinationSelected: (index) {
              setState(() {
                _selected = index;
              });
            },
            trailing: Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 30),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/unsplash_images/five.jpg"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
