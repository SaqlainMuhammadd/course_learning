// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class jsModel {
  String? thumbnail;
  String? url;
  String? tittle;
  jsModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<jsModel> VideoList = [
    jsModel(
        thumbnail: "assets/js1.jpg",
        url: "https://youtu.be/ajdRvxDWH4w?si=NZgMFm2UWgpVyv3R",
        tittle: "JavaScript Full Course | Variables & Data Types | Lecture 1"),
    jsModel(
        thumbnail: "assets/js2.jpg",
        url: "https://youtu.be/Zg4-uSjxosE?si=lHSkali7vRyeBI_9",
        tittle:
            "Lecture 2 : Operators and Conditional Statements | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js3.jpg",
        url: "https://youtu.be/UmRtFFSDSFo?si=e5QJqpjOT7aBsQkL",
        tittle: "Lecture 3: Loops and Strings | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js4.jpg",
        url: "https://youtu.be/gFWhbjzowrM?si=OnWKjKvqRQxaBu4h",
        tittle: "Lecture 4: Arrays | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js5.jpg",
        url: "https://youtu.be/P0XMXqDGttU?si=ANenefqyv6-zP5uI",
        tittle: "Lecture 5: Functions & Methods | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js6.jpg",
        url: "https://youtu.be/7zcXPCt8Ck0?si=a8dL7hGw2phtr5OS",
        tittle:
            "Lecture 6 : DOM - Document Object Model | JavaScript Full Course | Part 1"),
    jsModel(
        thumbnail: "assets/js7.jpg",
        url: "https://youtu.be/fXAGTOZ25H8?si=5GTyYOGAbhYjncsq",
        tittle:
            "Lecture 7 : DOM (Part 2) | Document Object Model | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js8.jpg",
        url: "https://youtu.be/_i-uLJAh79U?si=h48nZP95kgyReLgn",
        tittle: "Lecture 8 : Events in JavaScript | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js9.jpg",
        url: "https://youtu.be/SqrppLEljkY?si=8F8XEZ7PpqGpxNrv",
        tittle:
            "Lecture 9 : Tic Tac Toe Game in JavaScript | JS Project | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js10.jpg",
        url: "https://youtu.be/_V33HCZWLDQ?si=IzY6CRYrA_dAMcAZ",
        tittle:
            "Lecture 10 : MiniProject - Stone, Paper & Scissors Game | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js11.jpg",
        url: "https://youtu.be/N-O4w6PynGY?si=PC-u8Rr7r3dalHB1",
        tittle: "Lecture 11 : Classes & Objects | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js12.jpg",
        url: "https://youtu.be/d3jXofmQm44?si=d3YRja6ByuvejWmi",
        tittle:
            "Lecture 12 : Callbacks, Promises & Async Await | JavaScript Full Course"),
    jsModel(
        thumbnail: "assets/js13.jpg",
        url: "https://youtu.be/CyGodpqcid4?si=YK7CIBQhWoldoh7n",
        tittle:
            "Last Lecture : Fetch API with Project | JavaScript Full Course"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
