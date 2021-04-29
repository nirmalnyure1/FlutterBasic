import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('nirmal'),
              accountEmail: Text('nirmal@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text('purchase', style: GoogleFonts.lato()),
              subtitle: Text('purchase items'),
              onTap: () {
                print('purchase pressed');
              },
            ),
            ListTile(
              leading: Icon(Icons.store),
              title: Text('Sales'),
              subtitle: Text('sales items'),
              onTap: () {
                print('sales pressed');
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('Report'),
              subtitle: Text('Report items'),
              onTap: () {
                print('Report pressed');
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user_sharp),
              title: Text('Users'),
              subtitle: Text('Users items'),
              onTap: () {
                print('users pressed');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: GoogleFonts.aBeeZee(
              color: Colors.blue[900],
              fontWeight: FontWeight.bold,
              fontSize: 50),
        ),
      ),
    );
  }
}
