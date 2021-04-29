import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score App',
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Changer'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              'Score is',
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                fontSize: 150,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: increaseNumber,
                color: Colors.green,
                child: Text('Increase', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 20.0),
              RaisedButton(
                onPressed: decreaseNumber,
                color: Colors.blue,
                child: Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
      // ignore: missing_required_param
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
    );
  }
}
