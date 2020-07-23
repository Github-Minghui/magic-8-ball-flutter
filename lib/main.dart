import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        color: Colors.blue,
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset(
            'images/ball$ballNum.png',
          ),
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
