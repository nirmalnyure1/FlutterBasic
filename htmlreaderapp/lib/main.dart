import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:htmlreaderapp/readerScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Chapter Reader App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

List<String> lists = [
  'chapter 1',
  'chapter 2',
  'chapter 3',
  'chapter 4',
  'chapter 5',
  'chapter 6',
  'chapter 7',
  'chapter 8',
  'chapter 9',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter Reader App'),
        backgroundColor: Colors.red[700],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: lists.length,
          // itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (lists[index] == 'chapter 1') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReaderScreen(1)),
                  );
                  print('chapter 1 is clicked');
                } else if (lists[index] == 'chapter 2') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReaderScreen(2)),
                  );
                  print('chapter 2 is clicked');
                }
              },
              child: Card(
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    Icon(
                      Icons.book,
                      size: 50.0,
                      color: Colors.red[900],
                    ),
                    //Text(lists[index]),
                    Text(
                      '' + lists[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
