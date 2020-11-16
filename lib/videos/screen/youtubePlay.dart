import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YPlay extends StatefulWidget {
  String id;
  YPlay({this.id});
  @override
  _YPlayState createState() => _YPlayState();
}

class _YPlayState extends State<YPlay> {
  YoutubePlayerController controller;
  @override
  void initState() {
    // inicializamos los video player
    super.initState();
    controller = YoutubePlayerController(
        initialVideoId: widget.id,
        flags: YoutubePlayerFlags(autoPlay: true, mute: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        onReady: () {
          print('Lectura');
        },
      ),
    );
  }
}
