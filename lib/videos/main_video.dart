import 'package:academiainnova/videos/screen/youtubeHome.dart';
import 'package:flutter/material.dart';

class MainPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demostracion',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: YoutubeHome(),
    );
  }
}
