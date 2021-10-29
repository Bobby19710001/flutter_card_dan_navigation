import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new HalamanPertama(),
      'HalamanKedua': (BuildContext context) => new HalamanKedua(),
    },
  )); 
}
//MEMBUAT HALAMAN CARD
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Portal Menu Akses Route"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.headset,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanKedua');
          },
        ),
      ),
    );
  }
}
class  HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SPEAKER"),
        ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.purple,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanPertama');
          },
        ),
      ),
    );
  }
}