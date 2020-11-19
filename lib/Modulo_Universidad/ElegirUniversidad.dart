import 'package:academiainnova/ModuloCursos/ElegirCurso.dart';
import 'package:academiainnova/Modulo_Universidad/Universidad_CesarVallejo.dart';
import 'package:academiainnova/ModuloCursos/ElegirCarrera.dart';
import 'package:flutter/material.dart';

class Universidad extends StatefulWidget {
  @override
  _UniversidadState createState() => _UniversidadState();
}

class _UniversidadState extends State<Universidad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Selecciona universidad"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue[500],
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.school_outlined,
                        color: Colors.yellow,
                        size: 70.0,
                      ),
                      Text("Universidad-Cesar-Vallejo",
                          style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-Federico-Villareal",
                          style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-De-Ingenieria",
                          style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-Peruana-Ciencias",
                          style: new TextStyle(fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-Pontificia-Catolica",
                          style: new TextStyle(fontSize: 15.0))
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-San-Ignacio-Loyola",
                          style: new TextStyle(fontSize: 15.0))
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-Mayor-San-Marcos",
                          style: new TextStyle(fontSize: 15.0))
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carrera()));
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
                      Text("Universidad-San-Martin-De-Porres",
                          style: new TextStyle(fontSize: 15.0))
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
