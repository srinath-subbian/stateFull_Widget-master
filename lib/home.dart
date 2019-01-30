import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRun();
  }
}

class MakeItRun extends State<home> {
  int _Counter = 0;
  void _Pressed() {
    //Important - setState is called each time we need to update the UI
  setState(() {
    _Counter = _Counter+100;
  });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StateFull Widget"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Expanded(
                child: new Center(
                  child: new Text(
                    "$_Counter",
                    style: new TextStyle(
                        color: Colors.greenAccent, // _moneyCounter > 2000 ? Colors.blueAccent : Colors.red,//Challenge solution
                        fontSize: 46.9,
                        fontWeight: FontWeight.w800),
                  ),
                )),

            new Expanded(
                child: new Center(
                  child: new FlatButton(
                      color: Colors.lightGreen,
                      textColor: Colors.white70,
                      onPressed: _Pressed,
                      child: new Text(
                        "Press Me",
                        style: new TextStyle(
                          fontSize: 19.9,
                        ),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
