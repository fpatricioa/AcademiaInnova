import 'package:flutter/material.dart';

Widget AppBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
            text: 'Quiz ',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
        TextSpan(
            text: ' Marker',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
      ],
    ),
  );
}
