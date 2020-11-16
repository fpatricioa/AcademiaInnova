import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  //declaramos las variables
  final String title;
  final String descripcion;
  final dynamic icon;

  //una ves creado inicalizamos con un constructor
  SliderPage({this.title, this.descripcion, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.1,
            0.4,
            0.7,
            0.9
          ],
              colors: [
            Color(0xFF3594DD),
            Color(0xFF4563DB),
            Color(0xFF5036D5),
            Color(0xFF5B16D0),
          ])),
      //color: Colors.blue[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Color(0xfff50057),
            size: 150,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              descripcion,
              style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
