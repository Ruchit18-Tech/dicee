import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF320d3e),
          appBar: AppBar(
            title: Center(
              child: Text('Dicee'),
            ),
            backgroundColor: Color(0xFF320d3e),
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(int i) {
    if (i == 0) {
      setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
      });
    } else {
      setState(() {
        rightDiceNumber = Random().nextInt(6) + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace(0);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace(1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
