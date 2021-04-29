import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Simple Interest Calculator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = '';
  String t = '';
  String r = '';
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Simple Interest Calculator',
          style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold),
        ),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(height: 25),
            //for principal
            TextField(
              onChanged: (value) {
                p = value;
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter principal',
                hintStyle: TextStyle(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red[900],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            //for time
            TextField(
              onChanged: (value) {
                t = value;
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter time',
                hintStyle: TextStyle(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red[900],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            //for rate
            TextField(
              onChanged: (value) {
                r = value;
              },
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter rate',
                hintStyle: TextStyle(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red[900],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            MaterialButton(
              elevation: 5,
              //focusColor: Colors.green,
              color: myColor,
              onPressed: () {
                setState(() {
                  result = (double.parse(p) *
                          double.parse(t) *
                          double.parse(r) /
                          100)
                      .toString();
                });
              },
              shape: RoundedRectangleBorder(
                  // side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8)),
              height: 50,
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'the result is  $result',
                style: TextStyle(
                  color: Colors.red[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 150),
            Center(
              child: Text(
                'flutter with nirmal',
                style: TextStyle(
                    color: Colors.red[900], fontSize: 15, letterSpacing: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xffE21717);
