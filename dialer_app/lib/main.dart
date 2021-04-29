import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'Dialer App',
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ['bishowraj poudel', 'bimal sharma', 'damodar', 'himal'];
  var phoneNumber = ['980345698', '9848564876', '98485648456', '9848564868'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Dialer '),
        backgroundColor: Colors.red.shade700,
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contactList[index]),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                launch('tel:\\${phoneNumber[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}
