import 'package:flutter/material.dart';

class DialogFiveApp extends StatefulWidget {
  const DialogFiveApp({super.key});

  @override
  State<DialogFiveApp> createState() => _DialogFiveAppState();
}

class _DialogFiveAppState extends State<DialogFiveApp> {
  TextEnum? textEnum;

  void dialogTwoShowApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (
            BuildContext context,
            void Function(void Function()) setState,
          ) {
            return Dialog(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Privacy info", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                    
                    SizedBox(height: 10,),
                    Text("The backups created with this functionality may contain some sensitive data"),

                    SizedBox(height: 10,),
                    DropdownMenu<TextEnum>(
                      width: 300,
                      leadingIcon: Icon(Icons.add, size: 20,),
                      initialSelection: TextEnum.Automatic,
                      onSelected: (TextEnum? selectedValue) {
                        setState(() {
                          textEnum = selectedValue;
                        });
                      },
                      dropdownMenuEntries: TextEnum.values.map((TextEnum text) {
                        return DropdownMenuEntry(value: text, label: text.label);
                      }).toList(),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Confirm',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
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
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: Colors.deepPurple),
          ),
          child: ElevatedButton(
            onPressed: () {
              dialogTwoShowApp(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              backgroundColor: Colors.transparent,
            ),
            child: Text(
              "Show Dialog Five App",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

enum TextEnum {
  Automatic("Automatic"),
  Manual("Manual");

  const TextEnum(this.label);

  final String label;
}
