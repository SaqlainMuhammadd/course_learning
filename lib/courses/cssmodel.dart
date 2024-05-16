// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CssModel {
  String? thumbnail;
  String? url;
  String? tittle;
  CssModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<CssModel> VideoList = [
    CssModel(
        thumbnail: "assets/Flutter.png",
        url: "https://www.youtube.com/watch?v=zLBXLDe-lv0",
        tittle:
            "How to add Youtube Video Player in flutter | Flutter Youtube Player | Hindi |"),
    CssModel(
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
