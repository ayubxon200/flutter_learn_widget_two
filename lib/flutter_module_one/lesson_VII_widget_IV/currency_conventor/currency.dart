import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'helper/flag_menu_item_two.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String flagName = "SG";
  String flagNameTwo = "US";
  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();

  String hintTextOne = "1000.00";
  String hintTextTwo = "736.70";

  TitleApp title = TitleApp.sgd;

  String natija = "1 SGD = 0.7367 USA";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE7E7EE),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 3,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Currency Convertor",
                      style: TextStyle(fontSize: 25, color: Color(0xFF1F2261)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Check live rates, set rate alerts, receive notification and more",
                      style: TextStyle(fontSize: 16, color: Color(0xFF808080)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.sizeOf(context).width - 40,
                padding: EdgeInsets.only(left: 15, top: 7, bottom: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(fontSize: 15, color: Color(0xFF989898)),
                    ),

                    // Tepadagi qism
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: DropdownButton(
                            value: flagName,
                            underline: SizedBox(),
                            icon: Icon(Icons.keyboard_arrow_down_sharp),

                            items: FlagdropDownMenuItems,
                            onChanged: (value) {
                              setState(() {
                                flagName = value!;
                                if (flagName == "SG") {
                                  title = TitleApp.sgd;
                                } else if (flagName == "US") {
                                  title = TitleApp.usa;
                                }
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade200,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              onChanged: (String? value) {
                                setState(() {
                                  if(value != null && flagName != "US") {
                                    int number = int.parse(value);
                                    _controllerTwo.text = (number * 0.7367).toString();
                                  } else if(value != null && flagName != "SG") {
                                    int number = int.parse(value);
                                    _controllerTwo.text = (number * 1.36).toString();
                                  }
                                });
                              },
                              controller: _controllerOne,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: hintTextOne,
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(width: 135, color: Colors.grey, height: 2),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              String helper = flagNameTwo;
                              flagNameTwo = flagName;
                              flagName = helper;

                              final helperController = _controllerOne.text;
                              _controllerOne.text = _controllerTwo.text;
                              _controllerTwo.text = helperController;

                              final helperThree = hintTextOne;
                              hintTextOne = hintTextTwo;
                              hintTextTwo = helperThree;

                              if(natija.contains("1 SGD")) {
                                natija = "1 USA = 1.36 SGD";
                              } else {
                                natija = "1 SGD = 0.7367 USA";
                              }
                            });
                          },
                          icon: Icon(Icons.replay_circle_filled_sharp),
                        ),
                        Container(width: 135, color: Colors.grey, height: 2),
                      ],
                    ),

                    // Pastgi qism
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: DropdownButton(
                            value: flagNameTwo,
                            underline: SizedBox(),
                            icon: Icon(Icons.keyboard_arrow_down_sharp),

                            items: FlagdropDownMenuItemsTwo,
                            onChanged: (value) {
                              setState(() {
                                flagNameTwo = value!;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade200,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              controller: _controllerTwo,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: hintTextTwo,
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Indicative Exchange Rate",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        natija,
                        style: TextStyle(fontSize: 15)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
