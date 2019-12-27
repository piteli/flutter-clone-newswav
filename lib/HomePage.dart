import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title : new Text("Flutter NewsWav Clone App"),
        backgroundColor : Colors.redAccent,
        actions: <Widget>[

          new IconButton(icon: new Icon(Icons.search), onPressed: () => debugPrint("search")),
          new IconButton(icon: new Icon(Icons.add), onPressed: () => debugPrint("Add"))

        ]
      ),

    );
  }
}
