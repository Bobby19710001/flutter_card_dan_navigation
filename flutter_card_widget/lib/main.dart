import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertamaku(),
  ));
}
//MEMBUAT HALAMAN CARD
class HalamanPertamaku extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Selamat Datang Di Portal Bobby"),
          backgroundColor: Colors.black
        ),
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new CardSaya(
                  icon: Icons.access_alarm_sharp,
                  teks: "Jadwal Imsak",
                  warnaIcon: Colors.grey),
              new CardSaya(
                  icon: Icons.place,
                  teks: "Cari Mesjid Terdekat",
                  warnaIcon: Colors.green),
              new CardSaya(
                  icon: Icons.access_alarms_rounded,
                  teks: "Jadwal Buka Puasa",
                  warnaIcon: Colors.yellow),
              new CardSaya(
                  icon: Icons.music_note,
                  teks: "Murotal Al-quran",
                  warnaIcon: Colors.blue),    
            ],
          ),
        ),
      );
    }
}
class CardSaya extends StatelessWidget {
  CardSaya({required this.icon, required this.teks, required this.warnaIcon});

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
    Widget build(BuildContext context) {
      return new Container(
          height: 180,
          padding: new EdgeInsets.all(3.0),
          color: Colors.pink,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Icon(
                  icon,
                  size: 80.0,
                  color: warnaIcon,
                ),
                new Text(
                  teks,
                  style: new TextStyle(fontSize: 23.0),
                )
              ],
            ),
          )); 
      
  }
}