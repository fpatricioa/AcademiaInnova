import 'package:academiainnova/videos/screen/youtubeHome.dart';
import 'package:flutter/material.dart';

class MainPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de videos',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: YoutubeHome(),
    );
  }
}
