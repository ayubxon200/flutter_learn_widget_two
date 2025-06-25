import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({super.key});

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/qrcodes/qrcode_one.webp",
                      ),
                    ),
                  ),
                ),
                accountName: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My main account",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                    ),
                  ],
                ),
                accountEmail: Text(
                  "3524.14 SMC",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.lightGreen),
              ),

              ListTile(
                leading: Icon(Icons.home, color: Colors.green,),
                title: Text("Home", style: TextStyle(color: selected == 0 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 0;
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.account_balance, color: Colors.green,),
                title: Text("Account (3)", style: TextStyle(color: selected == 1 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 1;
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.wallet_sharp, color: Colors.green,),
                title: Text("Wallets (2)", style: TextStyle(color: selected == 2 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 2;
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.dashboard, color: Colors.green,),
                title: Text("Dashboard", style: TextStyle(color: selected == 3 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 3;
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.network_wifi_sharp, color: Colors.green,),
                title: Text("Networks", style: TextStyle(color: selected == 4 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 4;
                  });
                },
              ),

              Spacer(),

              ListTile(
                leading: Icon(Icons.settings, color: Colors.green,),
                title: Text("Settings", style: TextStyle(color: selected == 5 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 5;
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.donut_large_outlined, color: Colors.green,),
                title: Text("Logout", style: TextStyle(color: selected == 6 ? Colors.green : Colors.black),),
                onTap: () {
                  setState(() {
                    selected = 6;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
