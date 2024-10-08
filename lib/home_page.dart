import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int mark1 = 0;
  int mark2 = 0;

  String winner = "Draw";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Players"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            winner,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Player 1",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              )),
              Expanded(
                child: Text(
                  "Player 2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                mark1.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              )),
              Expanded(
                child: Text(
                  mark2.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green)),
                    onPressed: () {
                      setState(() {
                        mark1++;
                      });
                      checkWinner();
                    },
                    child: Text("+1"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green)),
                    onPressed: () {
                      setState(() {
                        mark2++;
                      });
                      checkWinner();
                    },
                    child: Text("+1"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green)),
                    onPressed: () {
                      setState(() {
                        mark1 += 2;
                      });
                      checkWinner();
                    },
                    child: Text("+2"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green)),
                    onPressed: () {
                      setState(() {
                        mark2 += 2;
                      });
                      checkWinner();
                    },
                    child: Text("+2"),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void checkWinner() {
    if (mark1 > mark2) {
      setState(() {
        winner = "Winner is Player 1";
      });
    } else if (mark2 > mark1) {
      setState(() {
        winner = " Winner is Player2";
      });
    } else {
      setState(() {
        winner = "Draw";
      });
    }
  }
}
