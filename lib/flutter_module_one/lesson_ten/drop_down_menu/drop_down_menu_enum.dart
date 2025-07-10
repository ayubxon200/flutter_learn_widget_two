import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/drop_down_menu/color_container_for_enum.dart';

enum DropDownMenuEnum {
  robertJohnson(ColorContainerForEnum(color: Colors.pink), "Robert Johnson"),
  emilyDavis(ColorContainerForEnum(color: Colors.grey), "Emily Davis"),
  michaelThomson(ColorContainerForEnum(color: Colors.lightBlueAccent), "Michael Thomson"),
  oliviaMartinez(ColorContainerForEnum(color: Colors.deepPurple), "Olivia Martinez"),
  williamBrown(ColorContainerForEnum(color: Colors.amber), "William Brown");

  const DropDownMenuEnum(this.widget, this.fullName);
  final Widget widget;
  final String fullName;
}
