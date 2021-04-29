import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
