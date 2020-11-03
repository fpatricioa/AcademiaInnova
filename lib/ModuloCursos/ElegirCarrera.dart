
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
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue[400],
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
                onTap: (){
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(          
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                    
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("ING.SISTEMAS", style :new TextStyle(fontSize: 15.0))
                      
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
                onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("ING.CIVIL", style :new TextStyle(fontSize: 15.0))
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("PSICOLOGÍA", style :new TextStyle(fontSize: 15.0))
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("ADMINISTRACIÓN", style :new TextStyle(fontSize: 15.0))
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("MEDICINA", style :new TextStyle(fontSize: 15.0))
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("DERECHO", style :new TextStyle(fontSize: 15.0))
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("ARQUITECTURA", style :new TextStyle(fontSize: 15.0))
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
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Curso()));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school,color: Colors.orange, size: 70.0,),
                      Text("ING.AMBIENTAL", style :new TextStyle(fontSize: 15.0))
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