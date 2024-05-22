// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HtmlModel {
  String? thumbnail;
  String? url;
  String? tittle;
  HtmlModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<HtmlModel> VideoList = [
    HtmlModel(
        thumbnail: "assets/html1.jpg",
        url: "https://youtu.be/Rek0NWPCNOc?si=ow-h7Aslg1II_sbu",
        tittle: "HTML Course | From Beginners to Advance Level | Lecture 1"),
    HtmlModel(
        thumbnail: "assets/html1.jpg",
        url: "https://youtu.be/Rek0NWPCNOc?si=ow-h7Aslg1II_sbu",
        tittle: "HTML Course | From Beginners to Advance Level | Lecture 1"),
    HtmlModel(
        thumbnail: "assets/html2.jpg",
        url: "https://youtu.be/2QR11oDukn4?si=xAhVu6rtroRFaakj",
        tittle: "HTML Course | World's most premium HTML Course | Lecture 2"),
    HtmlModel(
        thumbnail: "assets/html3.jpg",
        url: "https://youtu.be/jRAZlTEZi9I?si=2u36Ni9j1QNBKS2Z",
        tittle: "HTML Course | Media Elements | Lecture 3"),
    HtmlModel(
        thumbnail: "assets/html4.jpg",
        url: "https://youtu.be/61ppyY5rUB0?si=0ka3H9dOGHUiF6nM",
        tittle: "HTML | Structuring a Mega Project"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
