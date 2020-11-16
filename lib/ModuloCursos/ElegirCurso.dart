import 'package:academiainnova/Menu_sidebar/item_dashboard.dart';
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
    home: Curso(),
  ));
}

class Curso extends StatefulWidget {
  @override
  _CursoState createState() => _CursoState();
}

class _CursoState extends State<Curso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange[300],
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Selecciona el curso'),
        leading: Container(),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              //color: Color(0xffFED525),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(3.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Mat()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      //Icon(Icons.psychology_outlined, size: 70.0),
                      Item(
                          icon: Icons.psychology_outlined,
                          title: "MATEMÁTICA",
                          color: 0xffFED525)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              //color: Color(0xffFD637B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(3.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Lit()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Item(
                          icon: Icons.library_books,
                          title: "LITERATURA",
                          color: 0xffFD637B)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(3.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Geo()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Item(
                          icon: Icons.format_shapes,
                          title: "GEOMETRÍA",
                          color: 0xff21CDFF)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.all(3.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Arit()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Item(
                          icon: Icons.receipt_long,
                          title: "ARITMÉTICA",
                          color: 0xff7585F6)
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
