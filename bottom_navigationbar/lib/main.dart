import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Bottom Nav App',
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
  int _selectedIndex = 0;

  List<Widget> myWidget = <Widget>[
    WelcomeDesign('welcome to home', Colors.yellow[700]),
    WelcomeDesign('welcome to about', Colors.red[700]),
    WelcomeDesign('welcome to setting', Colors.green[700]),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttom Navigation'),
        backgroundColor: Colors.red[700],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'about'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Center(
        child: myWidget.elementAt(_selectedIndex),
      ),
    );
  }
}

class WelcomeDesign extends StatelessWidget {
  WelcomeDesign(this.showText, this.containerColor);
  final String showText;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 100.0,
        width: double.infinity,
        child: Center(
          child: Text(
            showText,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
