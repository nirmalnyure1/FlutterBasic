import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(this.username);
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 25.0),
          Center(
            child: Text(
              'wellcome to home page  $username',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 300.0),
          Text(
            ' flutter with nirmal ',
            style: TextStyle(
                color: Colors.red[900], letterSpacing: 5, fontSize: 10),
          ),
          SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
