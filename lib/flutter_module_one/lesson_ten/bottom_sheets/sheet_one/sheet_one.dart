import 'package:flutter/material.dart';

class SheetOne extends StatefulWidget {
  const SheetOne({super.key});

  @override
  State<SheetOne> createState() => _SheetOneState();
}

class _SheetOneState extends State<SheetOne> {
  bool? selected = true;

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Choose payment method"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close, size: 20),
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: AssetImage(
                      "assets/images/instagram_posts_images/nine.jpg",
                    ),
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(width: 15),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alex Parkinson", style: TextStyle(fontSize: 18)),
                      Text("****6767", style: TextStyle(fontSize: 15)),
                    ],
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Checkbox(
                        value: selected,
                        onChanged: (value) {
                          selected = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: AssetImage(
                      "assets/images/instagram_posts_images/nine.jpg",
                    ),
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(width: 15),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alex Parkinson", style: TextStyle(fontSize: 18)),
                      Text("****0089", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.add, size: 30),
                title: Text(
                  "Add new card",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),

              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                padding: EdgeInsets.all(15),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.check, size: 20, color: Colors.white),
                  ),
                  title: Text(
                    "We adhere entirely to the date security",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text(
                    "standards of the payment card industry",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),

              SizedBox(height: 20),

              SafeArea(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
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
