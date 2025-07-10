import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/dpdn_menu_two/menu_enum.dart';

class DropDownMenuTwo extends StatefulWidget {
  const DropDownMenuTwo({super.key});

  @override
  State<DropDownMenuTwo> createState() => _DropDownMenuTwoState();
}

class _DropDownMenuTwoState extends State<DropDownMenuTwo> {

  MenuEnum? selectionItem = MenuEnum.filterDropdown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: DropdownMenu(
          initialSelection: selectionItem,
          onSelected: (value) {
            setState(() {
              selectionItem = value;
            });
          },
          label: Text("Pick Amenities"),
          textStyle: TextStyle(fontSize: 18),
          requestFocusOnTap: true,
          dropdownMenuEntries:
              MenuEnum.values.map((valueEnum) {
                return DropdownMenuEntry(
                  value: valueEnum,
                  label: valueEnum.title,
                );
              }).toList(),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
