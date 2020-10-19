import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderPage extends StatelessWidget {
  //declaramos las variables
  final String title;
  final String descripcion;
  final String image;

  //una ves creado inicalizamos con un constructor
  SliderPage({this.title, this.descripcion, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

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
        children: <Widget>[
          //Image.asset(image, width: width * 0.6),
          SvgPicture.asset(
            image,
            width: width * 0.8,
          ),
          SizedBox(
            height: 60,
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              descripcion,
              style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 18,
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
