import 'package:academiainnova/ModuloCursos/Aritm%C3%A9tica.dart';
import 'package:academiainnova/ModuloCursos/F%C3%ADsica.dart';
import 'package:academiainnova/ModuloCursos/Geograf%C3%ADa.dart';
import 'package:academiainnova/ModuloCursos/Geometr%C3%ADa.dart';
import 'package:academiainnova/ModuloCursos/Historia.dart';
import 'package:academiainnova/ModuloCursos/Literatura.dart';
import 'package:academiainnova/ModuloCursos/Matem%C3%A1tica.dart';
import 'package:academiainnova/ModuloCursos/Qu%C3%ADmica.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: VILLA(),
  ));
}

class VILLA extends StatefulWidget {
  @override
  _VILLAState createState() => _VILLAState();
}

class _VILLAState extends State<VILLA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Seleccion area Villareal"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange[300],
      body: Container(
        padding: EdgeInsets.all(55.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Mat()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.psychology_outlined,
                        color: Colors.yellow,
                        size: 70.0,
                      ),
                      Text("MATEMÁTICA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Lit()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.library_books,
                        color: Colors.red,
                        size: 70.0,
                      ),
                      Text("LITERATURA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Geo()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.format_shapes,
                        color: Colors.orange,
                        size: 70.0,
                      ),
                      Text("GEOMETRÍA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Arit()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.receipt_long,
                        color: Colors.black54,
                        size: 70.0,
                      ),
                      Text("ARITMÉTICA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Geog()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.public,
                        color: Colors.brown,
                        size: 70.0,
                      ),
                      Text("GEOGRAFÍA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Hist()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.history_edu,
                        color: Colors.blue,
                        size: 70.0,
                      ),
                      Text("HISTORIA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Fis()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.scatter_plot,
                        color: Colors.purple,
                        size: 70.0,
                      ),
                      Text("FÍSICA", style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Quim()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.science_outlined,
                        color: Colors.green,
                        size: 70.0,
                      ),
                      Text("QUÍMICA", style: new TextStyle(fontSize: 15.0))
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
