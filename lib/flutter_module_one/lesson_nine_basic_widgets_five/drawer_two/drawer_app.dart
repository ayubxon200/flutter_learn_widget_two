import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(height: 40),

              // person and icon
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 45,
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/unsplash_images/five.jpg",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.account_balance_wallet_outlined, size: 30),
                  ],
                ),
              ),

             Padding(
               padding: EdgeInsets.only(left: 8, right: 8),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Vera",
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                   SizedBox(height: 5),

                   Text(
                     "@veracordeiro20 + Profile",
                     style: TextStyle(fontSize: 15, color: Colors.grey),
                   ),

                   SizedBox(height: 5,),
                   Row(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text("250", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                       SizedBox(width: 5,),
                       Text("Following", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),),
                       SizedBox(width: 5,),
                       Text("15K", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                       SizedBox(width: 5,),
                       Text("Followers", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),),
                     ],
                   ),
                 ],
               ),
             ),

              SizedBox(height: 20,),

              ListTile(
                leading: FaIcon(FontAwesomeIcons.twitter, size: 30,),
                title: Text("Twitter blue", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.format_quote_outlined, size: 30,),
                title: Text("Topics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.bookmark_border_outlined, size: 30,),
                title: Text("Bookmark", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.list_alt, size: 30,),
                title: Text("Lists", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                onTap: () {},
              ),

              Divider(),

              ListTile(
                title: Text("Creator Studio", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_up, size: 25, color: Colors.blue,),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.flash_on, size: 25,),
                title: Text("Moment", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                onTap: () {},
              ),
              
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_down_outlined, size: 25,),
                title: Text("Professional tools", style: TextStyle(fontSize: 18),),
                onTap: () {},
              ),

              ListTile(
                trailing: Icon(Icons.keyboard_arrow_down_outlined, size: 25,),
                title: Text("Settings and Support", style: TextStyle(fontSize: 18),),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//assets/images/unsplash_images/five.jpg
