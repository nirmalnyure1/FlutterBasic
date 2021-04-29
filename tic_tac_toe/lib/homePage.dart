import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //to add icon images
  var cross = Icon(
    Icons.cancel,
    size: 80,
    color: Colors.blue[900],
  );
  var circle = Icon(
    Icons.circle,
    size: 80,
    color: Colors.red[900],
  );
  var edit = Icon(
    Icons.emoji_emotions,
    size: 80,
    color: Colors.blue[100],
  );

  bool isCross = true;
  String message;
  List<String> gameState;
  //initialize box with empty value

  @override
  void initState() {
    gameState = List.filled(9, "empty");
    this.message = '';
    super.initState();
  }

  //To play game
  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.isCross) {
          this.gameState[index] = "cross";
        } else {
          this.gameState[index] = "circle";
        }
        isCross = !isCross;
        checkWin();
      });
    }
  }

  //resetGame
  resetGame() {
    setState(() {
      gameState = List.filled(9, "empty");
    });
  }

//To get Icon Image

  Icon getIcon(String title) {
    switch (title) {
      case ('empty'):
        return edit;
        break;
      case ('cross'):
        return cross;
        break;
      case ('circle'):
        return circle;
        break;
    }
  }

  //To check For Wining

  checkWin() {
    if (gameState[0] != 'empty' &&
        gameState[0] == gameState[1] &&
        gameState[1] == gameState[2]) {
      setState(() {
        this.message = this.gameState[0] + ' win';
      });
    } else if (gameState[3] != 'empty' &&
        gameState[3] == gameState[4] &&
        gameState[4] == gameState[5]) {
      setState(() {
        this.message = this.gameState[3] + ' win';
      });
    } else if (gameState[6] != 'empty' &&
        gameState[6] == gameState[7] &&
        gameState[7] == gameState[8]) {
      setState(() {
        this.message = this.gameState[6] + ' win';
      });
    } else if (gameState[0] != 'empty' &&
        gameState[0] == gameState[3] &&
        gameState[3] == gameState[6]) {
      setState(() {
        this.message = this.gameState[0] + ' win';
      });
    } else if (gameState[1] != 'empty' &&
        gameState[1] == gameState[4] &&
        gameState[4] == gameState[7]) {
      setState(() {
        this.message = this.gameState[1] + ' win';
      });
    } else if (gameState[2] != 'empty' &&
        gameState[2] == gameState[5] &&
        gameState[5] == gameState[8]) {
      setState(() {
        this.message = this.gameState[2] + ' win';
      });
    } else if (gameState[0] != 'empty' &&
        gameState[0] == gameState[4] &&
        gameState[4] == gameState[8]) {
      setState(() {
        this.message = this.gameState[0] + ' win';
      });
    } else if (gameState[2] != 'empty' &&
        gameState[2] == gameState[4] &&
        gameState[4] == gameState[6]) {
      setState(() {
        this.message = this.gameState[2] + ' win';
      });
    } else if (!gameState.contains("empty")) {
      setState(() {
        message = 'Game Draw';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 100,
                crossAxisCount: 3,
                childAspectRatio: 40,
                crossAxisSpacing: 30.0,
                mainAxisExtent: 80.0,
              ),
              itemCount: gameState.length,
              itemBuilder: (context, index) => SizedBox(
                height: 100.0,
                width: 100.0,
                child: MaterialButton(
                  onPressed: () {
                    this.playGame(index);
                  },
                  child: getIcon(
                    this.gameState[index],
                  ),
                ),
              ),
            ),
          ),
          Text(
            message,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          SizedBox(height: 50),
          Container(
            child: MaterialButton(
              minWidth: 200,
              height: 40,
              color: Colors.blue,
              onPressed: () {
                resetGame();
              },
              child: Text(
                'Reset Game',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(height: 50),
          Text('#codewithNirmalNyure')
        ],
      ),
    );
  }
}
