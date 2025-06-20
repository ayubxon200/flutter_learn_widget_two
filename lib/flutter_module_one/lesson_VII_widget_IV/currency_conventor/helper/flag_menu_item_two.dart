import 'package:flag/flag.dart';
import 'package:flutter/material.dart';


enum TitleApp {
  sgd,
  usa,
}

const FlagmenuItems = <String>["SG", "US"];
final List<DropdownMenuItem<String>> FlagdropDownMenuItems =
FlagmenuItems.map(
      (String value) => DropdownMenuItem<String>(
    value: value,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Flag.fromString(
            value, // Singapore country code
            height: 45,
            width: 45,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 3),
        Text(value),
      ],
    ),
  ),
).toList();


const FlagmenuItemsTwo = <String>["US", "SG"];
final List<DropdownMenuItem<String>> FlagdropDownMenuItemsTwo =
FlagmenuItemsTwo.map(
      (String value) => DropdownMenuItem<String>(
    value: value,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Flag.fromString(
            value, // Singapore country code
            height: 45,
            width: 45,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 3),
        Text(value),
      ],
    ),
  ),
).toList();