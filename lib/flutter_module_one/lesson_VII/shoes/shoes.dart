import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_VII/shoes/check_for_shoes.dart';

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

final List<String> _listUrl = [
  "assets/images/moduleOneLessonEightImages/one.png",
  "assets/images/moduleOneLessonEightImages/two.jpg",
  "assets/images/moduleOneLessonEightImages/three.png",
  "assets/images/moduleOneLessonEightImages/four.png",
  "assets/images/moduleOneLessonEightImages/five.png",
];

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: SafeArea(
          child: Text(
            "Shoes",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: false,
      ),

      body: ListView.builder(
        itemCount: _listUrl.length,
        itemBuilder: (context, index) {
          return _ContainerApp(index: index);
        },
      ),
    );
  }
}

class _ImageApp extends StatelessWidget {
  final String assetsUrl;

  const _ImageApp({required this.assetsUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image(image: AssetImage(assetsUrl), width: 100, height: 100),
    );
  }
}

class _ContainerApp extends StatelessWidget {
  final int index;

  const _ContainerApp({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 15),
      child: Row(
        children: [
          _ImageApp(assetsUrl: _listUrl[index]),
          SizedBox(width: 20),
          Column(
            children: [
              Text("Vecteezy", style: TextStyle(fontSize: 25)),
              SizedBox(height: 5),
              Text("Vecteezy", style: TextStyle(fontSize: 15)),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CheckForShoes(index: index,);
                    }));
                  },
                  icon: Icon(Icons.add, size: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
