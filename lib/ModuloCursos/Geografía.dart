import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Geog(),
  ));
}

class Geog extends StatefulWidget {
  @override
  _GeogState createState() => _GeogState();
}

class _GeogState extends State<Geog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: Text("Geografía"),
        backgroundColor: Color(0xFF7E5E23),
      ),
      backgroundColor: Color(0xFFA8843F),
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
                      Icon(Icons.book,color: Colors.brown, size: 70.0,),
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
                      Icon(Icons.assignment,color: Colors.brown, size: 70.0,),
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