import 'package:flutter/material.dart';

int bCount = 0;

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}

class  CalculatorState extends State<Calculator> {

  int _numDisplay = 0;
  int _buttonCount = 6;

  int getButtonCount() {
    return _buttonCount;
  }

  Widget _rowNum(int number) {
    return Row(
      children: <Widget>[
        FlatButton(
          onPressed: (){
            setState(() {
             _numDisplay = number;
             _buttonCount++;
             print('$_buttonCount CalPage');
             StatState().count();
            //  _StatState()._buttonCount = this._buttonCount;
            //  _StatState().didUpdateWidget(Stat());
            });
          },
          child: Text(number.toString(),
          style: TextStyle(fontSize: 30),),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'something',
      home: Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(30),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$_numDisplay',
                style: TextStyle(fontSize: 60),)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _rowNum(7),
              _rowNum(8),
              _rowNum(9),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _rowNum(4),
              _rowNum(5),
              _rowNum(6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _rowNum(1),
              _rowNum(2),
              _rowNum(3),
            ],
          ),
          FloatingActionButton(
            child: Text('Count'),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Stat())
              );
            },
          )
        ],
      )
    ),
    );
  }
}

class Stat extends StatefulWidget {

  @override
  StatState createState() => StatState();
}

class StatState extends State<Stat> {
  int _childCount = 0;

  void count() {
    bCount++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats',
        style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$bCount',
                style: TextStyle(fontSize: 60),),
              ],
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                     print(_childCount);
                     print('$bCount');
                    });
                  },
                  child: Text('Refresh'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}