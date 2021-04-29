import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: ToDoApp(),
    ),
  );
}

class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List listTODO = [
    '',
  ];
  String value;
  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  final addItemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ToDo App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: listTODO.length,
          itemBuilder: (context, index) {
            return index == 0
                ? TextFormField(
                    controller: addItemController,
                    decoration: InputDecoration(hintText: 'Add Item'),
                    onChanged: (val) {
                      value = val;
                    },
                  )
                : ListTile(
                    leading: Icon(Icons.work),
                    title: Text(
                      '${listTODO[index]}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addItemController.clear();
          addTODO(value);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
