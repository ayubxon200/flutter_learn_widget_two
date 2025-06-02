import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String wrapper = "";
String history = "";
String result = '';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Tepa qism
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.deepOrangeAccent,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Calculator",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              result,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              wrapper,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "History",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                history,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Pastgi qism
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper = "";
                                result = "";
                              });
                            },
                            child: Text(
                              "C",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: FittedBox(
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      wrapper += "(";
                                    });
                                  },
                                  child: Text(
                                    "(",
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      wrapper += ")";
                                    });
                                  },
                                  child: Text(
                                    ")",
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "%";
                              });
                            },
                            child: Text(
                              "%",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "/";
                              });
                            },
                            child: Text(
                              "/",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "7";
                              });
                            },
                            child: Text(
                              "7",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "8";
                              });
                            },
                            child: Text(
                              "8",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "9";
                              });
                            },
                            child: Text(
                              "9",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // x
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "x";
                              });
                            },
                            child: Text(
                              "x",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        // 4
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "4";
                              });
                            },
                            child: Text(
                              "4",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // 5
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "5";
                              });
                            },
                            child: Text(
                              "5",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // 6
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "6";
                              });
                            },
                            child: Text(
                              "6",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // -
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "-";
                              });
                            },
                            child: Text(
                              "-",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        // 1
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "1";
                              });
                            },
                            child: Text(
                              "1",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // 2
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "2";
                              });
                            },
                            child: Text(
                              "2",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // 3
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "3";
                              });
                            },
                            child: Text(
                              "3",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // +
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "+";
                              });
                            },
                            child: Text(
                              "+",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        // +/-
                        Expanded(
                          flex: 1,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  wrapper += "*(-1)";
                                });
                              },
                              child: Text(
                            "+/-",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          )),
                        ),

                        // 0
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += "0";
                              });
                            },
                            child: Text(
                              "0",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // .
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                wrapper += ".";
                              });
                            },
                            child: Text(
                              ".",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                try {
                                  String expressionString = wrapper.replaceAll(
                                    'x',
                                    '*',
                                  );

                                  final parser = ShuntingYardParser();
                                  final expression = parser.parse(
                                    expressionString,
                                  );

                                  final context = ContextModel();

                                  final value = expression.evaluate(
                                    EvaluationType.REAL,
                                    context,
                                  );

                                  result = value.toString();
                                  history = wrapper;
                                } catch (e) {
                                  wrapper = "Error";
                                }
                              });
                            },
                            child: Text(
                              "=",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
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
