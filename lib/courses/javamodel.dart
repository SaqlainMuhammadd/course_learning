// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class JavaModel {
  String? thumbnail;
  String? url;
  String? tittle;
  JavaModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<JavaModel> VideoList = [
    JavaModel(
        thumbnail: "assets/java1.jpg",
        url: "https://youtu.be/yRpLlJmRo2w?si=KZ2udRn4ITt5iXsl",
        tittle:
            "Introduction to Java Language | Lecture 1 | Complete Placement Course"),
    JavaModel(
        thumbnail: "assets/java2.jpg",
        url: "https://youtu.be/LusTv0RlnSU?si=K-6xs0ZIFewt37A_",
        tittle:
            "Variables in Java | Input Output | Complete Placement Course | Lecture 2"),
    JavaModel(
        thumbnail: "assets/java3.jpg",
        url: "https://youtu.be/I5srDu75h_M?si=kT8cILBVngoy0T3Z",
        tittle:
            "Conditional Statements | If-else, Switch Break | Complete Java Placement Course | Lecture 3"),
    JavaModel(
        thumbnail: "assets/java4.jpg",
        url: "https://youtu.be/0r1SfRoLuzU?si=N8CGV8uq6I03hFOv",
        tittle: "Loops in Java | Java Placement Full Course | Lecture 4"),
    JavaModel(
        thumbnail: "assets/java5.jpg",
        url: "https://youtu.be/GjHNGM7KN3w?si=Ig-r0TtNDOi63paK",
        tittle:
            "9 Best Patterns Questions In Java (for Beginners) | Java Placement Course | Lecture 5"),
    JavaModel(
        thumbnail: "assets/java6.jpg",
        url: "https://youtu.be/Dr4PpNa7AYo?si=hPmWUf0Uxo_BghOc",
        tittle:
            "Advanced Pattern Questions | Java | Complete Placement Course - Lecture 6"),
    JavaModel(
        thumbnail: "assets/java7.jpg",
        url: "https://youtu.be/qcSz4ef9UHA?si=wM3Bv_FV98ptFAwo",
        tittle:
            "Functions & Methods | Java Complete Placement Course | Lecture 7"),
    JavaModel(
        thumbnail: "assets/java8.jpg",
        url: "https://youtu.be/hS-4pj88rCM?si=q5G7Cp7MrC-sn-vG",
        tittle:
            "Functions in Java | Practice Questions | Complete Placement Course | Lecture 8"),
    JavaModel(
        thumbnail: "assets/java9.jpg",
        url: "https://youtu.be/bQssdSrSGNE?si=xMtHzXk1lIhRcdeN",
        tittle:
            "Basics of Time Complexity and Space Complexity | Java | Complete Placement Course | Lecture 9"),
    JavaModel(
        thumbnail: "assets/java10.jpg",
        url: "https://youtu.be/NTHVTY6w2Co?si=af18Zk5VbyoEjOyU",
        tittle:
            "Arrays Introduction | Java Complete Placement Course | Lecture 10"),
    JavaModel(
        thumbnail: "assets/java11.jpg",
        url: "https://youtu.be/18Zt5I4S45o?si=kajg1nwanylaa9iL",
        tittle: "2D Arrays | Java Complete Placement Course | Lecture 11"),
    JavaModel(
        thumbnail: "assets/java12.jpg",
        url: "https://youtu.be/vCRD36bG8xQ?si=fBa_fbxE75fe5Hxl",
        tittle: "Strings | Lecture 12 | Java Placement Series"),
    JavaModel(
        thumbnail: "assets/java13.jpg",
        url: "https://youtu.be/ZLDwskEhIFg?si=DcObPibAhy8kQRZD",
        tittle: "String Builder | Java Placement Course Lecture 13"),
    JavaModel(
        thumbnail: "assets/java14.jpg",
        url: "https://youtu.be/Oud4alVQU4s?si=d_ix-59-7hYPgeF7",
        tittle: "Operators & Binary Number System | Java Lecture 14"),
    JavaModel(
        thumbnail: "assets/java15.jpg",
        url: "https://youtu.be/OSoO8eCEEC8?si=N-_Ar7IPxj12StaV",
        tittle: "Bit Manipulation | Java Placement Course | Lecture 15"),
    JavaModel(
        thumbnail: "assets/java16.jpg",
        url: "https://youtu.be/PkJIc5tBRUE?si=RhoHx05nxle6Z_Wd",
        tittle:
            "Sorting in Java | Bubble Sort, Selection Sort & Insertion Sort | Java Placement Course"),
    JavaModel(
        thumbnail: "assets/java17.jpg",
        url: "https://youtu.be/liFyhzZl9uw?si=Tt2K18X3sRkzhcD7",
        tittle: "ArrayList In Java + Notes | Java Placement Course"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
