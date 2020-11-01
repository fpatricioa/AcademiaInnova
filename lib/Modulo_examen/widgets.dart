

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
Widget blueButton({BuildContext context, String label, buttonWidth}){
return Container(
 padding: EdgeInsets.symmetric(vertical: 18),
 decoration: BoxDecoration(
 color: Colors.blue, borderRadius: BorderRadius.circular(30)),
 alignment: Alignment.center,
 width: buttonWidth != null ? buttonWidth:MediaQuery.of(context).size.width - 48,
 child: Text(
   label,
   style: TextStyle(color: Colors.white, fontSize: 16 ),
 ),
);
}