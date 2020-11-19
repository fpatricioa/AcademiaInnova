import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String title;
  final dynamic icon;
  final dynamic color;

  Item({this.title, this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: (screenWidth - 40 - 77) / 2,
      height: (screenWidth - 40 - 17 - 100) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(color),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
class Item2 extends StatelessWidget {
  final String title;
  final dynamic icon;
  final dynamic color;

  Item2({this.title, this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: (screenWidth - 40 - 77) / 2,
      height: (screenWidth - 40 - 17 - 100) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(color),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
