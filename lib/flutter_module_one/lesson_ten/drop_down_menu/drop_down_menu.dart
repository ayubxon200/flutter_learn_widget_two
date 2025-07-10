import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/drop_down_menu/drop_down_menu_enum.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  DropDownMenuEnum? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Center(
        child: DropdownMenu<DropDownMenuEnum>(
          width: 250,
          hintText: 'Select members',
          initialSelection: selectedValue,
          onSelected: (value) {
            setState(() {
              selectedValue = value;
            });
          },
          dropdownMenuEntries: DropDownMenuEnum.values.map((enumValue) {
            return DropdownMenuEntry<DropDownMenuEnum>(
              value: enumValue,
              label: enumValue.fullName,
              leadingIcon: enumValue.widget,
            );
          }).toList(),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blueAccent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blueAccent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
