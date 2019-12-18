import 'dart:math';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chameleon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Chameleon Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Stack(
        children: <Widget>[
          Center(
            child: Text(
              'Hey there',
            ),
          ),
          Container(
            child: new GestureDetector(
              onTap: () => _toggleColor(),
            ),
          )
        ],
      ),
    );
  }

  void _toggleColor() {
    Random random = new Random();
    setState(() =>
        _color = Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255))
    );
  }
}
