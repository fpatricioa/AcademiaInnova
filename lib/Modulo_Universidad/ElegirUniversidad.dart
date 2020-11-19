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
        backgroundColor: Color(0xFF5B16D0),
        elevation: 0.0,
      ),
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  //Color(0xFFFF7B43),
                  
                  //Color(0xFFF5326F),
                  Color(0xFF5B16D0),
                  Color(0xFF5036D5),
                  Color(0xFF4563DB),
                  Color(0xFF3594DD),
                  
                ],
                //stops: [0.1, 0.4]
              ),
          
          ),
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              
              ),
              color: Color(0xFFFA9C31),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.white,
                        size: 70.0,
                      ),
                      Text("UCV",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                          
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFE62E4D),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.grey.shade200,
                        size: 70.0,
                      ),
                      Text("UNFV",
                          style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFE62E4D),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.grey.shade200,
                        size: 70.0,
                      ),
                      Text("UNI",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFFA9C31),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.grey.shade200,
                        size: 70.0,
                      ),
                      Text("UPC",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFFA9C31),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.grey.shade200,
                        size: 70.0,
                      ),
                      Text("PUCP",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFE62E4D),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.grey.shade200,
                        size: 70.0,
                      ),
                      Text("USIL",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFE62E4D),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.white,
                        size: 70.0,
                      ),
                      Text("UMNSM",
                          style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              color: Color(0xFFFA9C31),
              margin: EdgeInsets.all(15.0),
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
                        Icons.home_work_rounded,
                        color: Colors.grey.shade200,
                        size: 70.0,
                      ),
                      Text("USMP",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
