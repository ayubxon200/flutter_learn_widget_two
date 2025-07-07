import 'package:flutter/material.dart';

class SheetTwo extends StatefulWidget {
  const SheetTwo({super.key});

  @override
  State<SheetTwo> createState() => _SheetTwoState();
}

class _SheetTwoState extends State<SheetTwo> {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  "Create new task",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close, size: 20),
                ),
              ),

              Text(
                "Title",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Work on the checkout prototype",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(height: 15),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Project",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.account_balance_wallet_sharp,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8),
                      Text("Flasso App", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ),

              Container(width: 350, height: 2, color: Colors.black),

              SizedBox(height: 10),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Dua Date",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: Colors.red),
                      SizedBox(width: 8),
                      Text("Today", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ),

              Container(width: 350, height: 2, color: Colors.black),

              SizedBox(height: 20),
              Text(
                "Assignee",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/instagram_posts_images/seven.jpg"),
                    ),
                  ),

                  SizedBox(width: 10),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/instagram_posts_images/ten.jpg"),
                    ),
                  ),

                  SizedBox(width: 10),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/instagram_posts_images/twoleven.jpg"),
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(
                      child: Icon(Icons.add, size: 30,),
                    ),
                  )
                ],
              ),

              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: Colors.blue,
                ),
                title: Text(
                  "Advanced settings",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 90),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Done", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.purple, width: 2),
          ),
          child: ElevatedButton(
            onPressed: () {
              showBottomSheet(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              backgroundColor: Colors.transparent,
            ),
            child: Text("Show bottom sheet"),
          ),
        ),
      ),
    );
  }
}
