import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      home: HomePage(),
    ),
  );
}
