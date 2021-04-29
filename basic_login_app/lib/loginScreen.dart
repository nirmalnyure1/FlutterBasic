import 'package:basic_login_app/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle kmyStyle = TextStyle(fontSize: 25.0);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (value) {
        setState(() {
          username = value;
        });
      },
      //obscureText: true,
      style: kmyStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        hintText: 'username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );

    final passwordField = TextField(
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      obscureText: true,
      style: kmyStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        hintText: 'password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      color: Colors.red[400],
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (username == 'n' && password == '1234') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  username,
                ),
              ),
            );
            print('loginis sucessful');
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) => PopUp(),
            );
          }
        },
        padding: EdgeInsets.all(20.0),
        child: Text(
          ' LogIn ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    //returing
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 200.0),
                      Icon(Icons.account_circle,
                          color: Colors.redAccent[400], size: 100),
                      SizedBox(height: 50.0),
                      usernameField,
                      SizedBox(height: 20.0),
                      passwordField,
                      SizedBox(height: 20.0),
                      myLoginButton,
                      SizedBox(height: 250.0),
                      Text(
                        ' flutter with nirmal ',
                        style: TextStyle(
                            color: Colors.red[900],
                            letterSpacing: 5,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.red[900],
      title: Center(
        child: Text(
          'xxx',
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      content: Text(
        'username and password incorrect',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('colse'),
        ),
      ],
    );
  }
}
