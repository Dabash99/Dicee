import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red[300],
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
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  void ChangeDiceFace(){
    LeftDiceNumber=Random().nextInt(6) + 1;
    print('LeftDiceNumber = $LeftDiceNumber');
    RightDiceNumber=Random().nextInt(6) + 1;
    print('RightDiceNumber = $RightDiceNumber');
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ChangeDiceFace();
                });
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ChangeDiceFace();
                });
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

