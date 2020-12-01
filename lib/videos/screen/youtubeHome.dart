import 'package:academiainnova/videos/apifile/api.dart';
import 'package:academiainnova/videos/model/channel_model.dart';
import 'package:academiainnova/videos/model/video_model.dart';
import 'package:academiainnova/videos/screen/youtubePlay.dart';
import 'package:flutter/material.dart';

class YoutubeHome extends StatefulWidget {
  @override
  _YoutubeHomeState createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  ScrollController scontroller = ScrollController();
  bool isLoading = false;
  Channel _channel;
  getchannel() async {
    Channel channel = await ApiService.instance
        .fetchChannel(channelId: 'UCvNVrlPTL_QQzzpc362LTgQ');
    setState(() {
      _channel = channel;
    });
  }

  loadMoreVideo() async {
    setState(() {
      isLoading = true;
    });
    List<Video> morevideo = await ApiService.instance
        .fetchVideo(playListId: _channel.uploadPlaylistId);
    List<Video> allVideo = _channel.videos..addAll(morevideo);
    setState(() {
      _channel.videos = allVideo;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getchannel();
  }

  @override
  Widget build(BuildContext context) {
    scontroller.addListener(() {
      if (!isLoading &&
          scontroller.position.pixels == scontroller.position.maxScrollExtent &&
          _channel.videos.length != int.parse(_channel.videoCount)) {
        //print('End');
        loadMoreVideo();
      }
    });
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de videos'),
          centerTitle: true,
        ),
        body: _channel == null
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor),
                ),
              )
            : Column(
                children: [
                  Card(
                    color: Colors.indigo,
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.all(22),
                      padding: EdgeInsets.all(18),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.pink,
                            backgroundImage:
                                NetworkImage(_channel.profilePictureUrl),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  _channel.title,
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  _channel.suscriberCount + "Seguidores",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                                Text(
                                  _channel.videoCount + "Video",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //para eliminar los desbordamientos de pantalla las rayas de color amarillo y negro todo el listView meter dentro de un Conatiner
                  Container(
                    color: Colors.indigo,
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: scontroller,
                      itemCount: _channel.videos.length,
                      itemBuilder: (context, i) {
                        Video video = _channel.videos[i];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (YPlay(
                                        id: video.id,
                                      )))),
                          child: Container(
                            child: Card(
                              child: Row(
                                children: [
                                  Image(
                                    image: NetworkImage(video.thumbnailUrl),
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          video.title,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ));
  }
}
