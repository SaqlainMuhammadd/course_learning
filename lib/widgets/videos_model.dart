import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  String? thumbnail;
  String? url;
  String? tittle;
  VideoModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<VideoModel> VideoList = [
    VideoModel(
        thumbnail: "assets/Flutter.png",
        url: "https://www.youtube.com/watch?v=zLBXLDe-lv0",
        tittle:
            "How to add Youtube Video Player in flutter | Flutter Youtube Player | Hindi |"),
    VideoModel(
        thumbnail: "assets/Flutter.png",
        url: "https://www.youtube.com/watch?v=acThfmd4cFo",
        tittle:
            "How to add Youtube Video Player in flutter | Flutter Youtube Player | Hindi |"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
