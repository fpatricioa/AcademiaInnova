import 'package:academiainnova/Examen_uno/principal.dart';
import 'package:flutter/material.dart';
import 'package:academiainnova/videos/main_video.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Mat(),
  ));
}

class Mat extends StatefulWidget {
  @override
  _MatState createState() => _MatState();
}

class _MatState extends State<Mat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: Text("Matemática"),
        backgroundColor: Color(0xFFB49405),
      ),
      backgroundColor: Color(0xffFED525),
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
                      Icon(Icons.book,color: Color(0xFFECD81C), size: 88.0,),
                      Text("CLASES", style :new TextStyle(fontSize: 15.0))
                      
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
                      Icon(Icons.assignment,color: Color(0xFFECD81C), size: 88.0,),
                      Text("PRÁCTICAS", style :new TextStyle(fontSize: 15.0))
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