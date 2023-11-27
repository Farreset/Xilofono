import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => new _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final Color color;
  final Text text;
  final int index;

  MyWidget({required this.color, required this.text, required this.index});

  @override
  _MyWidgetState createState() => new _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color cellColor = Colors.white;
  Text cellText = new Text('white');

  @override
  void initState() {
    super.initState();
    cellColor = widget.color;
    cellText = widget.text;
  }

  _changeCell(index) {
    setState(() {
      switch (index) {
        case 0:
          cellColor = Colors.lightBlue;
          cellText = new Text('lightBlue');
          break;
        case 1:
          cellColor = Colors.red;
          cellText = new Text('red');
          break;
        case 2:
          cellColor = Colors.green;
          cellText = new Text('green');
          break;
        case 3:
          cellColor = Colors.yellow;
          cellText = new Text('yellow');
          break;
        case 4:
          cellColor = Colors.orange;
          cellText = new Text('orange');
          break;
        default:
          cellColor = Colors.brown;
          cellText = new Text('brown');
          break;
      }
    });
    print("Container clicked " + index.toString());
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => _changeCell(widget.index),
      child: new Container(
        margin: new EdgeInsets.symmetric(horizontal: 1.0),
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(
          color: cellColor,
        ),
        child: new Center(
          child: cellText,
        ),
      ),
    );
  }
}