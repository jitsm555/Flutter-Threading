import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Timer Example")),
        body: new TimerExample(),
      ),
    );
  }
}

class TimerExample extends StatefulWidget {
  @override
  _TimerExampleState createState() => _TimerExampleState();
}

class _TimerExampleState extends State<TimerExample> {
  int _counter= 0;
  _increamentCounter() {
    Timer.periodic(Duration(seconds: 2), (timer) {
       setState(() {
         _counter++;
       });
    });
  }
  @override
  Widget build(BuildContext context) {
    RaisedButton raisedButton =
        new RaisedButton(child: new Text("Button"), onPressed: () {
            _increamentCounter();
        });

    Text text = new Text("Current Value: " + _counter.toString());

    return Container(
      child: new ListView(
        children: <Widget>[
          raisedButton,
          text],
      ),
    );
  }
}
