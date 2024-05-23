// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PythonModel {
  String? thumbnail;
  String? url;
  String? tittle;
  PythonModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<PythonModel> VideoList = [
    PythonModel(
        thumbnail: "assets/python1.jpg",
        url: "https://youtu.be/t2_Q2BRzeEE?si=zZxapF0Ai38mdhKV",
        tittle: "Python Full Course | Variables & Data Types | Lecture 1"),
    PythonModel(
        thumbnail: "assets/python2.jpg",
        url: "https://youtu.be/lIId8IDP6TU?si=9puzadUt5aoCzzP-",
        tittle:
            "Lecture 2 : Strings & Conditional Statements | Python Full Course"),
    PythonModel(
        thumbnail: "assets/python3.jpg",
        url: "https://youtu.be/qVyvmzFxF_o?si=EsHZ3OVSdF7dDvqR",
        tittle: "Lecture 3 : List & Tuple in Python | Python Full Course"),
    PythonModel(
        thumbnail: "assets/python4.jpg",
        url: "https://youtu.be/078tYSD7K8E?si=q2QXSOThYbP_p_KM",
        tittle: "Lecture 4 : Dictionary & Set in Python | Python Full Course"),
    PythonModel(
        thumbnail: "assets/python5.jpg",
        url: "https://youtu.be/S73thl0AyFU?si=jvLQts0d4VlD9Z7p",
        tittle:
            "Lecture 5 : Loops in Python | While & For Loops | Python Full Course"),
    PythonModel(
        thumbnail: "assets/python6.jpg",
        url: "https://youtu.be/OvTH-7ESoRA?si=3_VsD1g4UaHP-i1M",
        tittle:
            "Lecture 6 : Functions & Recursion in Python | Python Full Course"),
    PythonModel(
        thumbnail: "assets/python7.jpg",
        url: "https://youtu.be/jU0cndZziO0?si=x3mhWFkNxUjN8DiM",
        tittle: "Lecture 7 : File Input/Output in Python"),
    PythonModel(
        thumbnail: "assets/python8.jpg",
        url: "https://youtu.be/HeW-D6KpDwY?si=7YAVq1T_wSLfaJ5X",
        tittle:
            "Lecture 8 : OOPS in Python | Object Oriented Programming | Classes & Objects | Python Full Course"),
    PythonModel(
        thumbnail: "assets/python9.jpg",
        url: "https://youtu.be/bAwmZVJeO5s?si=8K5pieTiAS0J_eJK",
        tittle:
            "Lecture 9 : OOPS Part 2 | Object Oriented Programming | Python Full Course"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
