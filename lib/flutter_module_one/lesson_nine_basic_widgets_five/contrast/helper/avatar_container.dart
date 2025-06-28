import 'package:flutter/material.dart';


class AvatarContainer extends StatelessWidget {
  final String name;
  final String nameTitle;
  final Color color;

  const AvatarContainer({
    required this.name,
    required this.nameTitle,
    this.color = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: color,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(child: Icon(Icons.person, size: 35)),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(name, style: TextStyle(fontSize: 15)),
                Text(
                  nameTitle,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
