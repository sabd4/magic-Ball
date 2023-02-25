import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(" Ask me Anything "),
          backgroundColor: Colors.blue[900],
        ),
        body: _BallPage(),
      ),
    );
  }
}

class _BallPage extends StatefulWidget {
  @override
  State<_BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<_BallPage> {
  var clickImage = 1;
  void changeImage() {
    setState(() {
      clickImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          onPressed: () {
            print(" I got clicked ");
            changeImage();
          },
          child: Image.asset('images/ball$clickImage.png'),
        ),
      ),
    );
  }
}
