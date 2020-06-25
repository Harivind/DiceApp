import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        // backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.apps),
              Text(
                'DICE ',
                style: TextStyle(fontSize: 20, fontFamily: "SourceCode"),
              ),
            ],
          ),
          // backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int die1 = 1;
  int die2 = 2;

  void changeDiceFace() {
    setState(() {
      die2 = Random().nextInt(6) + 1;
      die1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Roll them!",
          style: TextStyle(fontSize: 42, fontFamily: "SourceCode"),
        ),
        SizedBox(
          height: 30,
        ),
        Row(children: [
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$die1.png"),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$die2.png"),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ]),
      ]),
    );
  }
}
