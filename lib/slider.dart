import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  //declaramos las variables
  final String title;
  final String descripcion;
  final String image;
  final Color color;

  //una ves creado inicalizamos con un constructor
  SliderPage({this.title, this.descripcion, this.image, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            width: 260,
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
