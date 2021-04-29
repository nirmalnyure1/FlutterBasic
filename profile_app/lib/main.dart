import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Profile App',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile App'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Image.network(
              'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG98ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
              height: 300,
              width: 300,
            ),
          ),
          SizedBox(height: 40),
          Text(
            'Name: Nirmal Nyure',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Address: Kathmandu, Nepal',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            'Email: nirmalnyure1@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text('Developed by: Nirmal Nyure')
        ],
      ),
    ),
  ));
}
