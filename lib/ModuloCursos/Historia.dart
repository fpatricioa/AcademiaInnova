import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Hist(),
  ));
}

class Hist extends StatefulWidget {
  @override
  _HistState createState() => _HistState();
}

class _HistState extends State<Hist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: Text("Historia"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange[300],
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
                      Icon(Icons.book,color: Colors.blue, size: 70.0,),
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
                      Icon(Icons.assignment,color: Colors.orange, size: 70.0,),
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