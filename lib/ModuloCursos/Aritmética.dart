import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Arit(),
  ));
}

class Arit extends StatefulWidget {
  @override
  _AritState createState() => _AritState();
}

class _AritState extends State<Arit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: Text("Aritmética"),
        backgroundColor: Color(0xFF0B7388),
      ),
      backgroundColor: Color(0xFF21CDF0),
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
                onTap: (){},
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.book,color: Color (0xFF14C5E9), size: 70.0,),
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
                onTap: (){},
                splashColor: Colors.orange,
                child: Center(
                  child: Column(                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.assignment,color: Color(0xFF14C5E9), size: 70.0,),
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