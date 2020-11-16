import 'package:flutter/material.dart';
import 'screen/screen_home.dart';

void main() {
  runApp(MyApplicativo());
}

class MyApplicativo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preguntas', home: HomeScreen());
  }
}
