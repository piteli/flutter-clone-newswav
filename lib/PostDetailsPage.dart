import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostDetails extends StatefulWidget {

  DocumentSnapshot snapshot;

  PostDetails({this.snapshot});

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar : new AppBar(
        title : new Text("Post Details"),
        backgroundColor: Colors.green,

      ),
      body : new Card(
        elevation : 10.0,
        margin : EdgeInsets.all(10.0),
        child : new ListView(
          children : <Widget>[
            new Row(
              children : <Widget>[
                new CircleAvatar(
                  child : new Text(widget.snapshot.data["title"][0]),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                )
              ]
            )
          ]
        )
      )
    );
  }
}
