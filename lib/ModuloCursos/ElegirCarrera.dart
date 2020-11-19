
import 'package:academiainnova/ModuloCursos/ElegirCurso.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Carrera(),
  ));
}

class Carrera extends StatefulWidget {
  @override
  _CarreraState createState() => _CarreraState();
}

class _CarreraState extends State<Carrera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: Text("Selecciona Carrera"),
        backgroundColor: Color(0xFF3575C9),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFF103266),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/imagen7.jpeg'), fit: BoxFit.cover)
          ),
        
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),       
        color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(          
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                    
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("ING.SISTEMAS", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("ING.CIVIL", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("PSICOLOGÍA", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("ADMINISTRACIÓN", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("MEDICINA", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("DERECHO", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("ARQUITECTURA", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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
          borderRadius: BorderRadius.circular(30.0),
        ),
              color: Color(0xFFFFFFFF),
              margin: EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_rounded,color: Color(0xFF1ED3A6), size: 70.0,),
                      Text("ING.AMBIENTAL", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
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