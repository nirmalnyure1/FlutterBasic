import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splashscreen_drawer/homeScree.dart';

class MysplashScreen extends StatefulWidget {
  @override
  _MysplashScreenState createState() => _MysplashScreenState();
}

class _MysplashScreenState extends State<MysplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomeScreen(),
      title: new Text('Welcome In SplashScreen App'),
      image: new Image.asset(
        'img/flash.png',
        height: 100.0,
        width: 100.0,
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.red,
      loadingText: Text('Loading'),
    );
  }
}
