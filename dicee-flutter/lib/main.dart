import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dicee', style: TextStyle(color: Colors.teal,)),
          backgroundColor: Colors.amber,
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
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
        child: Center(
          child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: FlatButton(onPressed: (){
                    setState(() {
                      leftdicenumber = Random().nextInt(6)+1;
                    });
                    },
                    child: Image.asset('images/dice$leftdicenumber.png'),
                  ),
                ),
          Expanded(
            flex: 2,
            child: FlatButton(onPressed: (){
              setState(() {
                rightdicenumber = Random().nextInt(6)+1;
              });
            },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
          ]
        )
        )
    );
}
}
