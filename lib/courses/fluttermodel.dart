// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class flutterModel {
  String? thumbnail;
  String? url;
  String? tittle;
  flutterModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<flutterModel> VideoList = [
    flutterModel(
        thumbnail: "assets/flutter1.jpg",
        url: "https://youtu.be/gbHK4dN7xJc?si=KshUSAVjvjqi3iq2",
        tittle:
            "1.1 - Flutter Course 2023 - Flutter for beginners - Flutter tutorial"),
    flutterModel(
        thumbnail: "assets/flutter2.jpg",
        url: "https://youtu.be/hs04CWG4WXA?si=p7pmvo2pt_D-l3sB",
        tittle:
            "1.2 - How to Install flutter in Android Studio 2023 - Flutter Crash course"),
    flutterModel(
        thumbnail: "assets/flutter3.jpg",
        url: "https://youtu.be/UK3FMJU7iqc?si=XfChGhyiGU2LRJyV",
        tittle:
            "1.3 - Create a First Flutter App 2023 Part 1 - Flutter Crash Course"),
    flutterModel(
        thumbnail: "assets/flutter4.jpg",
        url: "https://youtu.be/U_Yiw4tjeQw?si=-c8nBrkugXEV4Was",
        tittle:
            "1.4 - Create First Flutter App 2023 Part 2 - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter5.jpg",
        url: "https://youtu.be/A3J_k9Bucbs?si=Q3RGue0Wkk0Ror_r",
        tittle:
            "1.5 - Organize Your Flutter Code - Flutter Fat Arrows - Flutter tutorial for beginners"),
    flutterModel(
        thumbnail: "assets/flutter6.jpg",
        url: "https://youtu.be/_8YE5s_SP8w?si=gfsoQ9LO6pEw0beK",
        tittle:
            "1.6 - Add Logic in Flutter - Flutter Basic Crash Course for beginners"),
    flutterModel(
        thumbnail: "assets/flutter7.jpg",
        url: "https://youtu.be/py_j4NMcyDI?si=gX6-PGgOW5xdP_03",
        tittle:
            "2.1 - Exploring Widgets in Flutter - Overview - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter8.jpg",
        url: "https://youtu.be/FFs-kUKtPwA?si=d_Qs3AQVle9Em0EC",
        tittle:
            "2.2 - Image in Flutter - Asset Image | Network Image - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter9.jpg",
        url: "https://youtu.be/HFLF_U2MdW0?si=PzSibWXlPLsAG6zK",
        tittle:
            "2.3 - Add Material and Font Awesome Icons in Flutter - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter10.jpg",
        url: "https://youtu.be/tH9McCLvcBc?si=VSmbWl2huHEcGDi6",
        tittle:
            "2.4 - Create / Design a container in Flutter - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter11.jpg",
        url: "https://youtu.be/1Gd6QYxkk0A?si=8oH8KI1WUWI0Anfy",
        tittle:
            "2.5 - How to create and design buttons in Flutter - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter12.jpg",
        url: "https://youtu.be/IOI5f4ITJ9A?si=9Mx7H1-qgzUPjQJT",
        tittle: "2.6 - Create an Appbar in Flutter | Flutter Appbar 2023"),
    flutterModel(
        thumbnail: "assets/flutter13.jpg",
        url: "https://youtu.be/wzcJXTmxlWo?si=3TV1JleNUWzaMWc-",
        tittle: "2.7 - Flutter Row, Column, and Expanded Widget in Flutter"),
    flutterModel(
        thumbnail: "assets/flutter14.jpg",
        url: "https://youtu.be/icdgc0w3vVg?si=Xcr_vVPgNg1AmUHj",
        tittle:
            "2.9 - Flutter List View and List Tile | Flutter for beginners 2023"),
    flutterModel(
        thumbnail: "assets/flutter15.jpg",
        url: "https://youtu.be/hjB0vSjBMxw?si=JTyNDdkiEwYslAqK",
        tittle:
            "2.9 (b) - Flutter List View Builder | Flutter Tutorials for beginners 2023"),
    flutterModel(
        thumbnail: "assets/flutter16.jpg",
        url: "https://youtu.be/FSlXondkZzc?si=n6PcuQYXMSuz5-iq",
        tittle:
            "2.10 - Create a Navigation Drawer in Flutter - Flutter Basics - 2023"),
    flutterModel(
        thumbnail: "assets/flutter17.jpg",
        url: "https://youtu.be/kVMRzZjcLgM?si=TogPeKLOc9-VteyW",
        tittle:
            "2.11 - Floating Action Button - Flutter tutorial for beginners"),
    flutterModel(
        thumbnail: "assets/flutter18.jpg",
        url: "https://youtu.be/4q7usrZDoko?si=3QXKpiN6xt7QZdaa",
        tittle:
            "2.12 - Flutter Stack and Positioned Widget 2023 - Flutter Basics"),
    flutterModel(
        thumbnail: "assets/flutter19.jpg",
        url: "https://youtu.be/kdEmFtz0Nm8?si=2WednqcrOTFBX0qG",
        tittle:
            "2.13 - Custom Reusable Widgets in Flutter - Bonus Video - 2023"),
    flutterModel(
        thumbnail: "assets/flutter20.jpg",
        url: "https://youtu.be/q9EtnVx1cFs?si=pAjCVm8SDbsk-zcc",
        tittle:
            "3.1 - Flutter Stateful Widgets - Stateless VS Stateful - Flutter Crash Course 2023"),
    flutterModel(
        thumbnail: "assets/flutter21.jpg",
        url: "https://youtu.be/CX8oJDighU4?si=A03y6Ii-CVxcfYdJ",
        tittle:
            "3.2 - Navigate to a new screen in flutter - Flutter Push Pop 2023"),
    flutterModel(
        thumbnail: "assets/flutter22.jpg",
        url: "https://youtu.be/ccHt0cfDsOM?si=qF1ueS9k2GRXdZhz",
        tittle:
            "3.3 - Flutter TextField or TextFormField - Get values using Controller or onChanged"),
    flutterModel(
        thumbnail: "assets/flutter23.jpg",
        url: "https://youtu.be/SPpYCm3FAQc?si=9Q-JxI_KFq085F-G",
        tittle:
            "3.4 - Flutter Checkbox and CheckboxListTile Widget - Flutter Crash Course"),
    flutterModel(
        thumbnail: "assets/flutter24.jpg",
        url: "https://youtu.be/JLdit0tnwp8?si=60m87OvE4LJ3PtWS",
        tittle: "3.5 - Radio Button in Flutter Example - Flutter Crash Course"),
    flutterModel(
        thumbnail: "assets/flutter25.jpg",
        url: "https://youtu.be/6_Azs3fq9O4?si=Fg6dvWPZS_jMSV1B",
        tittle:
            "3.6 DropDown Button in flutter - DropdownFormField Flutter 2023"),
    flutterModel(
        thumbnail: "assets/flutter26.jpg",
        url: "https://youtu.be/BubDWUrbPQY?si=WE2eqjcriydPDA6T",
        tittle:
            "3.7 - Create a Form in Flutter with Form Validation - Flutter 2023"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
