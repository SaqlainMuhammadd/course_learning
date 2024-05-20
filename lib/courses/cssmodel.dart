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
        thumbnail: "assets/css1.jpg",
        url: "https://youtu.be/sqJ6xZ9mUwE?si=99pp8m7zhYzpPvJ_",
        tittle: "CSS - What is selectors? | Web Development Course"),
    CssModel(
        thumbnail: "assets/css2.jpg",
        url: "https://youtu.be/4nC4VXHlys8?si=vPSgWPLEVbLZCnjH",
        tittle: "Properties in CSS | Web Development Course | CSS Lecture 2"),
    CssModel(
        thumbnail: "assets/css3.jpg",
        url: "https://youtu.be/C01LeeMhwHc?si=sJwlBJob5dwKIqxC",
        tittle:
            "Understanding Box Model | Styling List and Tables | CSS Lecture 3"),
    CssModel(
        thumbnail: "assets/css4.jpg",
        url: "https://youtu.be/wKPlQkOdpFQ?si=hIVKdrZMp5-tydwk",
        tittle:
            "Understanding Cascading , Specificity and Inheritance | CSS Lecture 4"),
    CssModel(
        thumbnail: "assets/css5.jpg",
        url: "https://youtu.be/6Cpd63_WXdI?si=CFjFE3rtPbUWKMIG",
        tittle:
            "Styling Forms in CSS | Web Development Course | Lecture 5 of CSS"),
    CssModel(
        thumbnail: "assets/cssChallenge1.jpg",
        url: "https://youtu.be/bgKYobOXTZ0?si=8xAsTiaBOOPcnfdi",
        tittle: "Challenge #1 for Web Development Course students | Forms"),
    CssModel(
        thumbnail: "assets/css6.jpg",
        url: "https://youtu.be/l-EkcthUMl4?si=aapWNODfy8_o3Thz",
        tittle: "Debugging in CSS | Web Development Course"),
    CssModel(
        thumbnail: "assets/css7.jpg",
        url: "https://youtu.be/p870o46o1bM?si=9B3voYr4HGwwcb0k",
        tittle:
            "What is Responsiveness? CSS | Web Development Course | Lecture 7"),
    CssModel(
        thumbnail: "assets/cssChallenge2.jpg",
        url: "https://youtu.be/2WMRDUS_b4E?si=KuZtFEXLSpURNndu",
        tittle: "Responsiveness Challenge | CSS | Web Development Course"),
    CssModel(
        thumbnail: "assets/css8.jpg",
        url: "https://youtu.be/xpoWxFyGuC8?si=iUkn5wj5tIJ9w9IO",
        tittle: "Floats & Position Properties | CSS | Web Development Course"),
    CssModel(
        thumbnail: "assets/cssChallenge3.jpg",
        url: "https://youtu.be/lcPs2BbbI_M?si=je3hXYKxi1Piy53q",
        tittle: "Challenge 3: Float | Web Development Course"),
    CssModel(
        thumbnail: "assets/cssChallenge4.jpg",
        url: "https://youtu.be/D_YpGeDy-i8?si=a-IBKDxnwsUJP7Zc",
        tittle: "Challenge #4 : Positions | Web Development Course"),
    CssModel(
        thumbnail: "assets/css9.jpg",
        url: "https://youtu.be/zts6uNVnCNs?si=c4OhBJ-A4SnjbaBu",
        tittle: "Learn Flexbox Under 25mins | Web Development Course"),
    CssModel(
        thumbnail: "assets/cssChallenge5.jpg",
        url: "https://youtu.be/OGkaHOD6CRU?si=D5Wzat26jC5N8h-x",
        tittle: "Flexbox-1 Challenge | CSS | Web Development Course"),
    CssModel(
        thumbnail: "assets/cssChallenge6.jpg",
        url: "https://youtu.be/hFvf0iPOjT8?si=rwg_DNTZWT8Vzshm",
        tittle: "Flexbox-2 Challenge | CSS | Web Development Course"),
    CssModel(
        thumbnail: "assets/cssChallenge7.jpg",
        url: "https://youtu.be/eKtwlzRyuIc?si=fSifJ-xolrR3vus0",
        tittle: "Flexbox-3 Challenge | CSS | Web Development Course"),
    CssModel(
        thumbnail: "assets/css10.jpg",
        url: "https://youtu.be/xBSlwwitD5U?si=iHuEQN7EenufhI0U",
        tittle: "CSS Grid | Web Development Course"),
    CssModel(
        thumbnail: "assets/cssChallenge8.jpg",
        url: "https://youtu.be/8imJZHgf44E?si=wxOq6iV9NiYcdv9H",
        tittle: "CSS Grid-1 Challenge #8 | Web Development Course"),
    CssModel(
        thumbnail: "assets/css11.jpg",
        url: "https://youtu.be/Xdhdgl0Ju4k?si=6nW715Lw-0ENgJCG",
        tittle: "Learn Animations in CSS"),
    CssModel(
        thumbnail: "assets/css12.jpg",
        url: "https://youtu.be/IZa8pbR8CWs?si=FkNHejRRdcYBGZ5O",
        tittle: "Adding CSS to Mega Project"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
