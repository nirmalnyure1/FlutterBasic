import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  void changedDice() {
    setState(() {
      diceNumber = 3;
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dice Roller'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset(
                'assets/Group $diceNumber.png',
                height: 250.0,
                width: 250.0,
              ),
            ),
          ),
          SizedBox(height: 100),
          MaterialButton(
            onPressed: changedDice,
            color: Colors.red,
            child: Text(
              'ROll',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 200.0),
          Text(
            '#fluttewithNirmal',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
