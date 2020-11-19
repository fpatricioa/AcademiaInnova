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
        backgroundColor: Color(0xFF0E6268),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/ejemploo4.jpg'), fit: BoxFit.cover)
          ),
        padding: EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),

              color: Color(0xffFED525),
              margin: EdgeInsets.all(18.0),
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

                      Item2(

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

              color: Color(0xffFD637B),
              margin: EdgeInsets.all(18.0),

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
                      Item2(
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
              color: Color(0xFFFF7221),
              margin: EdgeInsets.all(18.0),
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
                      Item2(
                          icon: Icons.share_outlined,
                          title: "GEOMETRÍA",
                          color: 0xFFFF7221)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Color(0xFF21CDF0),
              margin: EdgeInsets.all(18.0),
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
                      Item2(
                          icon: Icons.format_shapes,
                          title: "ARITMÉTICA",
                          color: 0xFF21CDF0)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),

              color: Color(0xFFA8843F),
              margin: EdgeInsets.all(18.0),

              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Geog()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Item2(
                          icon: Icons.public_outlined,
                          title: "GEOGRAFÍA",
                          color: 0xFFA8843F)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Color(0xFF2E31D4),
              margin: EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Hist()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      Item2(
                          icon: Icons.history_edu,
                          title: "HISTORIA",
                          color: 0xFF2E31D4)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Color(0xFFA626C0),
              margin: EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Fis()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Item2(
                          icon: Icons.scatter_plot_outlined,
                          title: "FÍSICA",
                          color: 0xFFA626C0)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Color(0xFF38D323),
              margin: EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Quim()));
                },
                //splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Item2(
                          icon: Icons.science_outlined,
                          title: "QUÍMICA",
                          color: 0xFF38D323)

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
