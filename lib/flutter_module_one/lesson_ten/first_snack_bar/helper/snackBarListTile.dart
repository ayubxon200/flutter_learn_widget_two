
import 'package:flutter/material.dart';

class SnackBarListTile extends StatefulWidget {
  bool? isSelected;
  final String title;
  final String subTitle;

  SnackBarListTile({
    this.isSelected,
    required this.title,
    required this.subTitle,
    super.key,
  });

  @override
  State<SnackBarListTile> createState() => SnackBarListTileState();
}

class SnackBarListTileState extends State<SnackBarListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: widget.isSelected ?? false,
        onChanged: (selected) {
          setState(() {
            widget.isSelected = selected;
          });
        },
      ),
      title: Text(widget.title),
      subtitle: Text(widget.subTitle, style: TextStyle(fontSize: 12)),
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 10,
    );
  }
}
