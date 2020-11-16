import 'package:academiainnova/videos/model/video_model.dart';

class Channel {
  final String id;
  final String title;
  final String profilePictureUrl;
  final String suscriberCount;
  final String videoCount;
  final String uploadPlaylistId;
  List<Video> videos;

  Channel(
      {this.id,
      this.title,
      this.profilePictureUrl,
      this.suscriberCount,
      this.videoCount,
      this.uploadPlaylistId,
      this.videos});

factory Channel.fromJson(Map<String, dynamic> map) {
  return Channel(
    id: map['id'],
    title: map['snippet']['title'],
    profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
    suscriberCount: map['statistics']['subscriberCount'],
    videoCount: map['statistics']['videoCount'],
    uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
  );
}
}
