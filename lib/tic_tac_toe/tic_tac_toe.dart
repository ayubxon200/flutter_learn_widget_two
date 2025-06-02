import 'package:flutter/material.dart';
import 'package:flutter_learn/tic_tac_toe/colors.dart';
import 'package:flutter_learn/tic_tac_toe/sized.dart';

class TicTacToeApp extends StatefulWidget {
  const TicTacToeApp({super.key});

  @override
  State<TicTacToeApp> createState() => _TicTacToeAppState();
}

class _TicTacToeAppState extends State<TicTacToeApp> {

  List<String> board = List.filled(9, "");

  String winnerO = "O";
  String winnerX = "X";

  void onTap(int index) {
    if(board[index] != "" || winnerO != "O" || winnerX != "X") return;


    setState(() {
      board[index] = "X";
    });

   if(check("X")) {
     setState(() {
       winnerX = "You win";
     });
     return;
   }

   Future.delayed(Duration(milliseconds: 100), () {
     int movie = computer();
     if(movie != -1) {
       setState(() {
         board[movie] = "O";
       });
     }
     if(check("O")) {
       setState(() {
         winnerO = "Computer win";
       });
     }
   });
  }

  bool check(String user) {
    List<List<int>> wins = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (var win in wins) {
      if (board[win[0]] == user &&
          board[win[1]] == user &&
          board[win[2]] == user) {
        return true;
      }
    }
    return false;
  }

  int computer() {
    for(int i = 0; i < 9; i++) {
      if(board[i] == "") return i;
    }
    return -1;
  }

  void resetGame() {
    setState(() {
      board = List.filled(9, "");
      winnerO = "O";
      winnerX = "X";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("Tic Tac Toe", style: TextStyle(fontSize: 20, color: AppColor.white),),
          centerTitle: true,
          backgroundColor: AppColor.black87,
          actions: [
            IconButton(onPressed: () {
             resetGame();
            }, icon: Icon(Icons.refresh_sharp, color: AppColor.white,)),
          ],
        ),


        body: Container(
          color: AppColor.black87,
          child: Column(
            children: [
              Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("Player O", style: TextStyle(fontSize: 20, color: AppColor.white),),
                        SizedBox(height: 15,),
                        Text(winnerO, style: TextStyle(fontSize: 20, color: AppColor.white),),
                      ],
                    ),
                    SizedBox(width: 90,),
                    Column(
                      children: [
                        Text("Player X", style: TextStyle(fontSize: 20, color: AppColor.white),),
                        SizedBox(height: 15,),
                        Text(winnerX, style: TextStyle(fontSize: 20, color: AppColor.white),),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 150,),
              Wrap(
                children: List.generate(9, (index) {
                  return Sized(onTap: () => onTap(index), text: board[index]);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
