import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertamaku(),
  ));
}

class HalamanPertamaku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.red[200],
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          leading: new Icon(Icons.home),
          title: new Center(
            child: new Text("Knowlage Sharing Flutter"),
          ),
          actions: <Widget>[new Icon(Icons.search)],
        ), 
      );
    }
}
 