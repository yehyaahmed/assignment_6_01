import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Game(),
    );
  }
}

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  late int randomChoice_1;
  late int randomChoice_2;

  void randMe() {
    setState(() {
      randomChoice_1 = Random().nextInt(3) + 1;
      randomChoice_2 = Random().nextInt(3) + 1;

      if (randomChoice_1 == randomChoice_2) {
        Fluttertoast.showToast(
            msg: "Draw",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (randomChoice_1 == 1 && randomChoice_2 == 2) {
        Fluttertoast.showToast(
            msg: "Win",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (randomChoice_1 == 1 && randomChoice_2 == 3) {
        Fluttertoast.showToast(
            msg: "Loss",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (randomChoice_1 == 2 && randomChoice_2 == 1) {
        Fluttertoast.showToast(
            msg: "Loss",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (randomChoice_1 == 2 && randomChoice_2 == 3) {
        Fluttertoast.showToast(
            msg: "Win",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (randomChoice_1 == 3 && randomChoice_2 == 1) {
        Fluttertoast.showToast(
            msg: "Win",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (randomChoice_1 == 3 && randomChoice_2 == 2) {
        Fluttertoast.showToast(
            msg: "Loss",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    });
  }

  @override
  void initState() {
    randomChoice_1 = Random().nextInt(3) + 1;
    randomChoice_2 = Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Paper Rock Scissors"),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: TextButton(
                onPressed: () {
                  randMe();
                },
                child: Image.asset(
                  ("assets/choice$randomChoice_1.png"),
                ),
              )),
              Expanded(
                  child: TextButton(
                onPressed: null,
                child: Image.asset(
                  ("assets/choice$randomChoice_2.png"),
                ),
              )),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
margin: EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "You",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(width: 32,),
                Expanded(
                  child: Text("System",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 24,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
