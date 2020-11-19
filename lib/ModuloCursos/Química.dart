import 'package:academiainnova/Examen_uno/principal.dart';
import 'package:academiainnova/videos/main_video.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Quim(),
  ));
}

class Quim extends StatefulWidget {
  @override
  _QuimState createState() => _QuimState();
}

class _QuimState extends State<Quim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Química"),
        backgroundColor: Color(0xFF1F8112),
      ),
      backgroundColor: Color(0xFF38D323),
      body: Container(
        padding: EdgeInsets.all(80.0),
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPrincipal()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        color: Colors.green,
                        size: 70.0,
                      ),
                      Text("CLASES", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApplicativo()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.assignment,
                        color: Colors.green,
                        size: 70.0,
                      ),
                      Text("PRÁCTICAS", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
