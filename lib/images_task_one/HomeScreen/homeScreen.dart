import 'package:flutter/material.dart';

import '../Images_Widget/images.dart';
import '../TextAndBorderContainer/textAndBorderContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Stack(
              children: [
                Images(),

                TextAndBorderContainer(),
              ],
            ),
          ),

          SizedBox(height: 50,),

          Container(
            margin: EdgeInsets.only(left: 20),
            child: Stack(
              children: [
                Images(),

                TextAndBorderContainer(),
              ],
            ),
          ),

          SizedBox(height: 50,),

          Container(
            margin: EdgeInsets.only(left: 20),
            child: Stack(
              children: [
                Images(),

                TextAndBorderContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
